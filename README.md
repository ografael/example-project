Table "users" {
  "uid" int [PK]
  "name" string
  "role" string
}

Table "patient" {
  "uid" int [PK]
  "name" string
}


/*
  Autorefrator dinamico
*/
Table "appointment_group" {
  "uid" int [PK]
  "name" string
}

/* Cilindrico */
Table "appointment_title" {
  "uid" int [PK]
  "name" string
  "appointment_group" int [ref: > appointment_group.uid]
}


/* Olho direito / esquerdo */
Table "appointment_questions" {
  "uid" int [PK]
  "eye_side" string
  "appointment_title" int [ref: > appointment_title.uid]
}


/* -4,75, -5,00, etc */
Table "appointment_question_options" {
  "uid" int [PK]
  "appointment_questions" int [ref: > appointment_questions.uid]
  "question_option" string
}


Table "appointment_question_response" {
  "uid" int [PK]
  "appointment_questions" int [ref: > appointment_questions.uid]
  "appointment_question_options" int [ref: > appointment_question_options.uid]
  "patient" int [ref: > patient.uid]
}



/* -4,75, -5,00, etc */
Table "appointment_question_options" {
  "uid" int [PK]
  "appointment_questions" int [ref: > appointment_questions.uid]
  "question_option" string
}


Table "appointment_question_response" {
  "uid" int [PK]
  "appointment_questions" int [ref: > appointment_questions.uid]
  "appointment_question_options" int [ref: > appointment_question_options.uid]
  "patient" int [ref: > patient.uid]
}


