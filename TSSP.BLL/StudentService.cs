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

        public void UpdateStudent(Students stu)
        {
            Students student = db.Students.Where(e => e.Id == stu.Id).FirstOrDefault();
            if (student != null)
            {
                try
                {
                    //用修改后的值给修改前的值赋值
                    student = stu;
                    db.SubmitChanges();//执行
                }
                catch { }
            }
        }

        public Students selectStudentById(int sid)
        {
            Students student = (from s in db.Students where s.Id == sid select s).FirstOrDefault();
            return student;
        }
    }
}
