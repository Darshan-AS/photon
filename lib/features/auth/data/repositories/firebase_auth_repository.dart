import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/auth/domain/entities.dart';
import 'package:photon/features/auth/domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmail({
    @required Email email,
    @required Password password,
  }) async {
    final emailString = email.getOrThrow();
    final passwordString = password.getOrThrow();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailString,
        password: passwordString,
      );
      return const Right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return const Left(AuthFailure.emailAlreadyInUse());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmail({
    @required Email email,
    @required Password password,
  }) async {
    final emailString = email.getOrThrow();
    final passwordString = password.getOrThrow();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailString,
        password: passwordString,
      );
      return const Right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return const Left(AuthFailure.invalidEmailOrPassword());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return const Left(AuthFailure.cancelledByUser());

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return const Right(unit);
    } on PlatformException catch (_) {
      return const Left(AuthFailure.serverError());
    }
  }
}