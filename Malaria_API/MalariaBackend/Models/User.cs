//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MalariaBackend.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int User_ID { get; set; }
        public int User_Role_ID { get; set; }
        public string User_Name { get; set; }
        public string User_Password { get; set; }
        public string Email { get; set; }
        public string GUID { get; set; }
        public Nullable<System.DateTime> GUID_Expiry { get; set; }
    
        public virtual User_Role User_Role { get; set; }
    }
}