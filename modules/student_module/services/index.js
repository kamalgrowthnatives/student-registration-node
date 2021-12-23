const conn = require("../../../util/database");
module.exports = class Services {
  static fetchStudents(studentName) {
    return conn.execute(
      "SELECT student.st_name , student.st_phone, student.st_email, student.st_city, courses.cs_name from student JOIN student_course_map ON student.st_id = student_course_map.st_id join courses on student_course_map.sc_id = courses.cs_id  where st_name = '" +
        studentName +
        "'"
    );
  }
  static insertData(name, phone, email, city) {
    return conn.execute(
      "INSERT INTO student (st_name, st_phone, st_email, st_city) VALUES('" +
        name +
        "', '" +
        phone +
        "', '" +
        email +
        "', '" +
        city +
        "')"
    );
  }
};
