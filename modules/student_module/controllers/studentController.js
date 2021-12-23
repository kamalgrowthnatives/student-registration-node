const conn = require("../services");

exports.viewStudent = (req, res, next) => {
  let stName = req.body.getinfo;

  conn
    .fetchStudents(stName)
    .then(([row]) => {
      const isEmptyData = Object.keys(row).length === 0;
      if (isEmptyData) {
        res.send("Student not available");
      } else {
        res.render("lists", { row: row });
      }
    })
    .catch((err) => {
      console.log(err);
    });
};

exports.addStudent = (req, res, next) => {
  let name = req.body.name;
  let phone = req.body.phone;
  let email = req.body.email;
  let city = req.body.city;
  conn
    .insertData(name, phone, email, city)
    .then(([row]) => {
      res.send("Student Added");
      console.log(row);
    })
    .catch((err) => {
      console.log(err);
    });
};
