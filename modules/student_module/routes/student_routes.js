const studentController = require("../controllers/studentController");
app.set("view engine", "ejs");

app.get("/student_registration", (req, res) => {
  res.render("searchstudent");
});

app.get("/", (req, res) => {
  res.render("studentregistration");
});

app.post("/student-info", studentController.viewStudent);
app.post("/create", studentController.addStudent);

module.exports = "student_routes";
