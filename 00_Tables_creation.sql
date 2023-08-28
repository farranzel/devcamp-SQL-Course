CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `professors` (
  `professor_id` int NOT NULL,
  `professor_name` varchar(100) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE KEY `professor_id_UNIQUE` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `courses` (
  `course_id` int NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_professor_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_name_UNIQUE` (`course_name`),
  KEY `course_professor_id_idx` (`course_professor_id`),
  CONSTRAINT `course_professor_id` FOREIGN KEY (`course_professor_id`) REFERENCES `professors` (`professor_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `grades` (
  `grade_student_id` int NOT NULL,
  `grade_course_id` int NOT NULL,
  `grade_grade` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`grade_student_id`,`grade_course_id`),
  KEY `grade_course_id_idx` (`grade_course_id`),
  CONSTRAINT `grade_course_id` FOREIGN KEY (`grade_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `grade_student_id` FOREIGN KEY (`grade_student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;