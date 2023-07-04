using System;
using System.Linq;
using TSSP.DAL;
namespace TSSP.BLL
{
    public class StudentService
    {
        XPU_TSSPDataContext db = new XPU_TSSPDataContext();

        public void addStudent(Students stu)
        {
            db.Students.InsertOnSubmit(stu);
            db.SubmitChanges();
        }
       
        public Students selectStudentByEmail(string email)
        {
            Students student = (from s in db.Students where s.Email == email select s).FirstOrDefault();
            return student;
        }
    }
}
