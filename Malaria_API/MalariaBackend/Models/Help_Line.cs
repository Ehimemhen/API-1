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
    
    public partial class Help_Line
    {
        public int Help_Line_ID { get; set; }
        public Nullable<int> About_Malaria_ID { get; set; }
        public string Help_Line_Contact { get; set; }
        public string Help_Line_Practioner { get; set; }
    
        public virtual About_Malaria About_Malaria { get; set; }
    }
}
