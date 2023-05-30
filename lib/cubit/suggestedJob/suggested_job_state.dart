part of 'suggested_job_cubit.dart';

@immutable
abstract class SuggestedJobState {}

class SuggestedJobInitial extends SuggestedJobState {}

//! Get Products States

class SuggestedJobLoadingState extends SuggestedJobState {}

class SuggestedJobSuccessState extends SuggestedJobState {}

class SuggestedJobErrorState extends SuggestedJobState {}
