//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Malaria_API.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Prevention
    {
        public int Prevention_ID { get; set; }
        public Nullable<int> About_Malaria_ID { get; set; }
        public string Prevention_Method { get; set; }
    
        public virtual About_Malaria About_Malaria { get; set; }
    }
}
