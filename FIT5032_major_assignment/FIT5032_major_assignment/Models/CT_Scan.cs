//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FIT5032_major_assignment.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CT_Scan : Booking
    {
        public int ScanId { get; set; }
        public string Results { get; set; }
        public string Duration { get; set; }
        public string ContrastUsed { get; set; }
        public string ScanType { get; set; }
    
        public virtual Radiographer Radiographer { get; set; }
        public virtual Doctor Referral { get; set; }
    }
}