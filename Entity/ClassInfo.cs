using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class ClassInfo
    {
        private int _classId;
        private string _className;

        public int ClassId
        {
            get
            {
                return _classId;
            }
        }

        public string ClassName
        {
            get
            {
                return _className;
            }
            set
            {
                _className = value;
            }
        }
    }
}
