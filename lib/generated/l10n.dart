// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The Physical Activity Readiness Questionnaire for Everyone`
  String get welcomePageSubtitle {
    return Intl.message(
      'The Physical Activity Readiness Questionnaire for Everyone',
      name: 'welcomePageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Am I ready ?`
  String get welcomePageActionButton {
    return Intl.message(
      'Am I ready ?',
      name: 'welcomePageActionButton',
      desc: '',
      args: [],
    );
  }

  /// `The health benefits of regular physical activity are clear; more people should engage in physical activity every day of the week. Participating in physical activity is very safe for MOST people.`
  String get ghqIntroDisclaimer1 {
    return Intl.message(
      'The health benefits of regular physical activity are clear; more people should engage in physical activity every day of the week. Participating in physical activity is very safe for MOST people.',
      name: 'ghqIntroDisclaimer1',
      desc: '',
      args: [],
    );
  }

  /// `This questionnaire will determine whether you should seek medical advice before increasing the intensity of your physical activity.`
  String get ghqIntroDisclaimer2 {
    return Intl.message(
      'This questionnaire will determine whether you should seek medical advice before increasing the intensity of your physical activity.',
      name: 'ghqIntroDisclaimer2',
      desc: '',
      args: [],
    );
  }

  /// `Please read the 7 next questions carefully and answer each one honestly.`
  String get ghqIntroDisclaimer3 {
    return Intl.message(
      'Please read the 7 next questions carefully and answer each one honestly.',
      name: 'ghqIntroDisclaimer3',
      desc: '',
      args: [],
    );
  }

  /// `Understood`
  String get ghqIntroActionButton {
    return Intl.message(
      'Understood',
      name: 'ghqIntroActionButton',
      desc: '',
      args: [],
    );
  }

  /// `YES`
  String get actionButtonYES {
    return Intl.message(
      'YES',
      name: 'actionButtonYES',
      desc: '',
      args: [],
    );
  }

  /// `NO`
  String get actionButtonNO {
    return Intl.message(
      'NO',
      name: 'actionButtonNO',
      desc: '',
      args: [],
    );
  }

  /// `Question {currentQuestion} of 7`
  String ghqSliderTitle(Object currentQuestion) {
    return Intl.message(
      'Question $currentQuestion of 7',
      name: 'ghqSliderTitle',
      desc: '',
      args: [currentQuestion],
    );
  }

  /// `Has your doctor ever said that you have a heart condition OR high blood pressure ?`
  String get ghqQ1Title {
    return Intl.message(
      'Has your doctor ever said that you have a heart condition OR high blood pressure ?',
      name: 'ghqQ1Title',
      desc: '',
      args: [],
    );
  }

  /// `Heart condition or high blood pressure`
  String get ghqQ1Short {
    return Intl.message(
      'Heart condition or high blood pressure',
      name: 'ghqQ1Short',
      desc: '',
      args: [],
    );
  }

  /// `Do you feel pain in your chest at rest, during your daily activities of living, OR when you do physical activity?`
  String get ghqQ2Title {
    return Intl.message(
      'Do you feel pain in your chest at rest, during your daily activities of living, OR when you do physical activity?',
      name: 'ghqQ2Title',
      desc: '',
      args: [],
    );
  }

  /// `Chest pain`
  String get ghqQ2Short {
    return Intl.message(
      'Chest pain',
      name: 'ghqQ2Short',
      desc: '',
      args: [],
    );
  }

  /// `Do you lose balance because of dizziness OR have you lost consciousness in the last 12 months ?`
  String get ghqQ3Title {
    return Intl.message(
      'Do you lose balance because of dizziness OR have you lost consciousness in the last 12 months ?',
      name: 'ghqQ3Title',
      desc: '',
      args: [],
    );
  }

  /// `Please answer NO if your dizziness was associated with over-breathing (including during vigorous exercise).`
  String get ghqQ3Subtitle {
    return Intl.message(
      'Please answer NO if your dizziness was associated with over-breathing (including during vigorous exercise).',
      name: 'ghqQ3Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Loss of balance or consciousness`
  String get ghqQ3Short {
    return Intl.message(
      'Loss of balance or consciousness',
      name: 'ghqQ3Short',
      desc: '',
      args: [],
    );
  }

  /// `Have you ever been diagnosed with another chronic medical condition (other than heart disease or high blood pressure) ?`
  String get ghqQ4Title {
    return Intl.message(
      'Have you ever been diagnosed with another chronic medical condition (other than heart disease or high blood pressure) ?',
      name: 'ghqQ4Title',
      desc: '',
      args: [],
    );
  }

  /// `Chronic medical condition`
  String get ghqQ4Short {
    return Intl.message(
      'Chronic medical condition',
      name: 'ghqQ4Short',
      desc: '',
      args: [],
    );
  }

  /// `Are you currently taking prescribed medications for a chronic medical condition ?`
  String get ghqQ5Title {
    return Intl.message(
      'Are you currently taking prescribed medications for a chronic medical condition ?',
      name: 'ghqQ5Title',
      desc: '',
      args: [],
    );
  }

  /// `Medication for chronic medical condition`
  String get ghqQ5Short {
    return Intl.message(
      'Medication for chronic medical condition',
      name: 'ghqQ5Short',
      desc: '',
      args: [],
    );
  }

  /// `Do you currently have (or have had within the past 12 months) a bone, joint, or soft tissue (muscle, ligament, or tendon) problem that could be made worse by becoming more physically active ?`
  String get ghqQ6Title {
    return Intl.message(
      'Do you currently have (or have had within the past 12 months) a bone, joint, or soft tissue (muscle, ligament, or tendon) problem that could be made worse by becoming more physically active ?',
      name: 'ghqQ6Title',
      desc: '',
      args: [],
    );
  }

  /// `Please answer NO if you had a problem in the past, but it does not limit your current ability to be physically active.`
  String get ghqQ6Subtitle {
    return Intl.message(
      'Please answer NO if you had a problem in the past, but it does not limit your current ability to be physically active.',
      name: 'ghqQ6Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Past injury presenting risks`
  String get ghqQ6Short {
    return Intl.message(
      'Past injury presenting risks',
      name: 'ghqQ6Short',
      desc: '',
      args: [],
    );
  }

  /// `Has your doctor ever said that you should only do medically supervised physical activity ?`
  String get ghqQ7Title {
    return Intl.message(
      'Has your doctor ever said that you should only do medically supervised physical activity ?',
      name: 'ghqQ7Title',
      desc: '',
      args: [],
    );
  }

  /// `Need for medical supervision`
  String get ghqQ7Short {
    return Intl.message(
      'Need for medical supervision',
      name: 'ghqQ7Short',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get ghqSummaryQuestionTitle {
    return Intl.message(
      'Question',
      name: 'ghqSummaryQuestionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get ghqSummaryYesTitle {
    return Intl.message(
      'Yes',
      name: 'ghqSummaryYesTitle',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get ghqSummaryNoTitle {
    return Intl.message(
      'No',
      name: 'ghqSummaryNoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Validate`
  String get ghqSummaryActionButtonTitle {
    return Intl.message(
      'Validate',
      name: 'ghqSummaryActionButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Some questions are unanswered`
  String get ghqSummaryNotComplete {
    return Intl.message(
      'Some questions are unanswered',
      name: 'ghqSummaryNotComplete',
      desc: '',
      args: [],
    );
  }

  /// `You have answered YES to some questions. Further information is needed to determine your readiness to engage in increased physical activity.`
  String get ghqFollowupText {
    return Intl.message(
      'You have answered YES to some questions. Further information is needed to determine your readiness to engage in increased physical activity.',
      name: 'ghqFollowupText',
      desc: '',
      args: [],
    );
  }

  /// `Okay, let's go`
  String get ghqFollowupActionButton {
    return Intl.message(
      'Okay, let\'s go',
      name: 'ghqFollowupActionButton',
      desc: '',
      args: [],
    );
  }

  /// `Previous question`
  String get fuqPreviousQuestion {
    return Intl.message(
      'Previous question',
      name: 'fuqPreviousQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Arthritis, Osteoporosis, or Back Problems?`
  String get fuqQ1MainMain {
    return Intl.message(
      'Do you have Arthritis, Osteoporosis, or Back Problems?',
      name: 'fuqQ1MainMain',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ1Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ1Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ1Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ1Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have joint problems causing pain, a recent fracture or fracture caused by osteoporosis or cancer, displaced vertebra (e.g., spondylolisthesis), and/or spondylolysis/pars defect (a crack in the bony ring on the back of the spinal column)?`
  String get fuqQ1Sec2Main {
    return Intl.message(
      'Do you have joint problems causing pain, a recent fracture or fracture caused by osteoporosis or cancer, displaced vertebra (e.g., spondylolisthesis), and/or spondylolysis/pars defect (a crack in the bony ring on the back of the spinal column)?',
      name: 'fuqQ1Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Have you had steroid injections or taken steroid tablets regularly for more than 3 months?`
  String get fuqQ1Sec3Main {
    return Intl.message(
      'Have you had steroid injections or taken steroid tablets regularly for more than 3 months?',
      name: 'fuqQ1Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you currently have Cancer of any kind?`
  String get fuqQ2MainMain {
    return Intl.message(
      'Do you currently have Cancer of any kind?',
      name: 'fuqQ2MainMain',
      desc: '',
      args: [],
    );
  }

  /// `Does your cancer diagnosis include any of the following types: lung/bronchogenic, multiple myeloma (cancer of plasma cells), head, and/or neck?`
  String get fuqQ2Sec1Main {
    return Intl.message(
      'Does your cancer diagnosis include any of the following types: lung/bronchogenic, multiple myeloma (cancer of plasma cells), head, and/or neck?',
      name: 'fuqQ2Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `Are you currently receiving cancer therapy (such as chemotheraphy or radiotherapy)?`
  String get fuqQ2Sec2Main {
    return Intl.message(
      'Are you currently receiving cancer therapy (such as chemotheraphy or radiotherapy)?',
      name: 'fuqQ2Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Heart or Cardiovascular Condition?`
  String get fuqQ3MainMain {
    return Intl.message(
      'Do you have a Heart or Cardiovascular Condition?',
      name: 'fuqQ3MainMain',
      desc: '',
      args: [],
    );
  }

  /// `This includes Coronary Artery Disease, Heart Failure, Diagnosed Abnormality of Heart Rhythm.`
  String get fuqQ3MainSub {
    return Intl.message(
      'This includes Coronary Artery Disease, Heart Failure, Diagnosed Abnormality of Heart Rhythm.',
      name: 'fuqQ3MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ3Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ3Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ3Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ3Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an irregular heart beat that requires medical management?`
  String get fuqQ3Sec2Main {
    return Intl.message(
      'Do you have an irregular heart beat that requires medical management?',
      name: 'fuqQ3Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `(e.g., atrial fibrillation, premature ventricular contraction)`
  String get fuqQ3Sec2Sub {
    return Intl.message(
      '(e.g., atrial fibrillation, premature ventricular contraction)',
      name: 'fuqQ3Sec2Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have chronic heart failure?`
  String get fuqQ3Sec3Main {
    return Intl.message(
      'Do you have chronic heart failure?',
      name: 'fuqQ3Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have diagnosed coronary artery (cardiovascular) disease and have not participated in regular physical activity in the last 2 months?`
  String get fuqQ3Sec3Sub {
    return Intl.message(
      'Do you have diagnosed coronary artery (cardiovascular) disease and have not participated in regular physical activity in the last 2 months?',
      name: 'fuqQ3Sec3Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you currently have High Blood Pressure?`
  String get fuqQ4MainMain {
    return Intl.message(
      'Do you currently have High Blood Pressure?',
      name: 'fuqQ4MainMain',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ4Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ4Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ4Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ4Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a resting blood pressure equal to or greater than 160/90 mmHg with or without medication?`
  String get fuqQ4Sec2Main {
    return Intl.message(
      'Do you have a resting blood pressure equal to or greater than 160/90 mmHg with or without medication?',
      name: 'fuqQ4Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer YES if you do not know your resting blood pressure)`
  String get fuqQ4Sec2Sub {
    return Intl.message(
      '(Answer YES if you do not know your resting blood pressure)',
      name: 'fuqQ4Sec2Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any Metabolic Conditions?`
  String get fuqQ5MainMain {
    return Intl.message(
      'Do you have any Metabolic Conditions?',
      name: 'fuqQ5MainMain',
      desc: '',
      args: [],
    );
  }

  /// `This includes Type 1 Diabetes, Type 2 Diabetes, Pre-Diabetes`
  String get fuqQ5MainSub {
    return Intl.message(
      'This includes Type 1 Diabetes, Type 2 Diabetes, Pre-Diabetes',
      name: 'fuqQ5MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you often have difficulty controlling your blood sugar levels with foods, medications, or other physician-prescribed therapies?`
  String get fuqQ5Sec1Main {
    return Intl.message(
      'Do you often have difficulty controlling your blood sugar levels with foods, medications, or other physician-prescribed therapies?',
      name: 'fuqQ5Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you often suffer from signs and symptoms of low blood sugar (hypoglycemia) following exercise and/or during activities of daily living?`
  String get fuqQ5Sec2Main {
    return Intl.message(
      'Do you often suffer from signs and symptoms of low blood sugar (hypoglycemia) following exercise and/or during activities of daily living?',
      name: 'fuqQ5Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Signs of hypoglycemia may include shakiness, nervousness, unusual irritability, abnormal sweating, dizziness or light-headedness, mental confusion, difficulty speaking, weakness, or sleepiness.`
  String get fuqQ5Sec2Sub {
    return Intl.message(
      'Signs of hypoglycemia may include shakiness, nervousness, unusual irritability, abnormal sweating, dizziness or light-headedness, mental confusion, difficulty speaking, weakness, or sleepiness.',
      name: 'fuqQ5Sec2Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any signs or symptoms of diabetes complications such as heart or vascular disease and/or complications affecting your eyes, kidneys, OR the sensation in your toes and feet?`
  String get fuqQ5Sec3Main {
    return Intl.message(
      'Do you have any signs or symptoms of diabetes complications such as heart or vascular disease and/or complications affecting your eyes, kidneys, OR the sensation in your toes and feet?',
      name: 'fuqQ5Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have other metabolic conditions (such as current pregnancy-related diabetes, chronic kidney disease, or liver problems)?`
  String get fuqQ5Sec4Main {
    return Intl.message(
      'Do you have other metabolic conditions (such as current pregnancy-related diabetes, chronic kidney disease, or liver problems)?',
      name: 'fuqQ5Sec4Main',
      desc: '',
      args: [],
    );
  }

  /// `Are you planning to engage in what for you is unusually high (or vigorous) intensity exercise in the near future?`
  String get fuqQ5Sec5Main {
    return Intl.message(
      'Are you planning to engage in what for you is unusually high (or vigorous) intensity exercise in the near future?',
      name: 'fuqQ5Sec5Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any Mental Health Problems or Learning Difficulties?`
  String get fuqQ6MainMain {
    return Intl.message(
      'Do you have any Mental Health Problems or Learning Difficulties?',
      name: 'fuqQ6MainMain',
      desc: '',
      args: [],
    );
  }

  /// ` This includes Alzheimer’s, Dementia, Depression, Anxiety Disorder, Eating Disorder, Psychotic Disorder, Intellectual Disability, Down Syndrome`
  String get fuqQ6MainSub {
    return Intl.message(
      ' This includes Alzheimer’s, Dementia, Depression, Anxiety Disorder, Eating Disorder, Psychotic Disorder, Intellectual Disability, Down Syndrome',
      name: 'fuqQ6MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ6Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ6Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ6Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ6Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Down Syndrome AND back problems affecting nerves or muscles?`
  String get fuqQ6Sec2Main {
    return Intl.message(
      'Do you have Down Syndrome AND back problems affecting nerves or muscles?',
      name: 'fuqQ6Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Respiratory Disease?`
  String get fuqQ7MainMain {
    return Intl.message(
      'Do you have a Respiratory Disease?',
      name: 'fuqQ7MainMain',
      desc: '',
      args: [],
    );
  }

  /// `This includes Chronic Obstructive Pulmonary Disease, Asthma, Pulmonary High Blood Pressure`
  String get fuqQ7MainSub {
    return Intl.message(
      'This includes Chronic Obstructive Pulmonary Disease, Asthma, Pulmonary High Blood Pressure',
      name: 'fuqQ7MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ7Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ7Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ7Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ7Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Has your doctor ever said your blood oxygen level is low at rest or during exercise and/or that you require supplemental oxygen therapy?`
  String get fuqQ7Sec2Main {
    return Intl.message(
      'Has your doctor ever said your blood oxygen level is low at rest or during exercise and/or that you require supplemental oxygen therapy?',
      name: 'fuqQ7Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `If asthmatic, do you currently have symptoms of chest tightness, wheezing, laboured breathing, consistent cough (more than 2 days/week), or have you used your rescue medication more than twice in the last week?`
  String get fuqQ7Sec3Main {
    return Intl.message(
      'If asthmatic, do you currently have symptoms of chest tightness, wheezing, laboured breathing, consistent cough (more than 2 days/week), or have you used your rescue medication more than twice in the last week?',
      name: 'fuqQ7Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Has your doctor ever said you have high blood pressure in the blood vessels of your lungs?`
  String get fuqQ7Sec4Main {
    return Intl.message(
      'Has your doctor ever said you have high blood pressure in the blood vessels of your lungs?',
      name: 'fuqQ7Sec4Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Spinal Cord Injury?`
  String get fuqQ8MainMain {
    return Intl.message(
      'Do you have a Spinal Cord Injury?',
      name: 'fuqQ8MainMain',
      desc: '',
      args: [],
    );
  }

  /// `This includes Tetraplegia and Paraplegia`
  String get fuqQ8MainSub {
    return Intl.message(
      'This includes Tetraplegia and Paraplegia',
      name: 'fuqQ8MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ8Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ8Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ8Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ8Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you commonly exhibit low resting blood pressure significant enough to cause dizziness, light-headedness, and/or fainting?`
  String get fuqQ8Sec2Main {
    return Intl.message(
      'Do you commonly exhibit low resting blood pressure significant enough to cause dizziness, light-headedness, and/or fainting?',
      name: 'fuqQ8Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Has your physician indicated that you exhibit sudden bouts of high blood pressure (known as Autonomic Dysreflexia)?`
  String get fuqQ8Sec3Main {
    return Intl.message(
      'Has your physician indicated that you exhibit sudden bouts of high blood pressure (known as Autonomic Dysreflexia)?',
      name: 'fuqQ8Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Have you had a Stroke?`
  String get fuqQ9MainMain {
    return Intl.message(
      'Have you had a Stroke?',
      name: 'fuqQ9MainMain',
      desc: '',
      args: [],
    );
  }

  /// `This includes Transient Ischemic Attack (TIA) or Cerebrovascular Event`
  String get fuqQ9MainSub {
    return Intl.message(
      'This includes Transient Ischemic Attack (TIA) or Cerebrovascular Event',
      name: 'fuqQ9MainSub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?`
  String get fuqQ9Sec1Main {
    return Intl.message(
      'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
      name: 'fuqQ9Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `(Answer NO if you are not currently taking medications or other treatments)`
  String get fuqQ9Sec1Sub {
    return Intl.message(
      '(Answer NO if you are not currently taking medications or other treatments)',
      name: 'fuqQ9Sec1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any impairment in walking or mobility?`
  String get fuqQ9Sec2Main {
    return Intl.message(
      'Do you have any impairment in walking or mobility?',
      name: 'fuqQ9Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Have you experienced a stroke or impairment in nerves or muscles in the past 6 months?`
  String get fuqQ9Sec3Main {
    return Intl.message(
      'Have you experienced a stroke or impairment in nerves or muscles in the past 6 months?',
      name: 'fuqQ9Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any other medical condition not listed above or do you have two or more medical conditions?`
  String get fuqQ10MainMain {
    return Intl.message(
      'Do you have any other medical condition not listed above or do you have two or more medical conditions?',
      name: 'fuqQ10MainMain',
      desc: '',
      args: [],
    );
  }

  /// `Have you experienced a blackout, fainted, or lost consciousness as a result of a head injury within the last 12 months OR have you had a diagnosed concussion within the last 12 months?`
  String get fuqQ10Sec1Main {
    return Intl.message(
      'Have you experienced a blackout, fainted, or lost consciousness as a result of a head injury within the last 12 months OR have you had a diagnosed concussion within the last 12 months?',
      name: 'fuqQ10Sec1Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a medical condition that is not listed (such as epilepsy, neurological conditions, kidney problems)?`
  String get fuqQ10Sec2Main {
    return Intl.message(
      'Do you have a medical condition that is not listed (such as epilepsy, neurological conditions, kidney problems)?',
      name: 'fuqQ10Sec2Main',
      desc: '',
      args: [],
    );
  }

  /// `Do you currently live with two or more medical conditions?`
  String get fuqQ10Sec3Main {
    return Intl.message(
      'Do you currently live with two or more medical conditions?',
      name: 'fuqQ10Sec3Main',
      desc: '',
      args: [],
    );
  }

  /// `It is recommended that you visit a qualified exercise professional before becoming more physically active.`
  String get noClearance {
    return Intl.message(
      'It is recommended that you visit a qualified exercise professional before becoming more physically active.',
      name: 'noClearance',
      desc: '',
      args: [],
    );
  }

  /// `Your are cleared for physical activity`
  String get clearanceTitle {
    return Intl.message(
      'Your are cleared for physical activity',
      name: 'clearanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start becoming more physically active – start slowly and build up gradually.`
  String get clearanceSub1 {
    return Intl.message(
      'Start becoming more physically active – start slowly and build up gradually.',
      name: 'clearanceSub1',
      desc: '',
      args: [],
    );
  }

  /// `If you are over the age of 45 years and NOT accustomed to regular vigorous to maximal effort exercise, consult a qualified exercise professional before engaging in this intensity of exercise.`
  String get clearanceSub2 {
    return Intl.message(
      'If you are over the age of 45 years and NOT accustomed to regular vigorous to maximal effort exercise, consult a qualified exercise professional before engaging in this intensity of exercise.',
      name: 'clearanceSub2',
      desc: '',
      args: [],
    );
  }

  /// `Delay becoming more active if you have a temporary illness, if your are pregnant or if your health changes.`
  String get clearanceSub3 {
    return Intl.message(
      'Delay becoming more active if you have a temporary illness, if your are pregnant or if your health changes.',
      name: 'clearanceSub3',
      desc: '',
      args: [],
    );
  }

  /// `If you have any further questions, contact a qualified exercise professional.`
  String get clearanceSub4 {
    return Intl.message(
      'If you have any further questions, contact a qualified exercise professional.',
      name: 'clearanceSub4',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}