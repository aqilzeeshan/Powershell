using System.Management.Automation;
using System.ComponentModel;

namespace MySnapIn
{
    [RunInstaller(true)] // snap-in installation class
    public class MySnapInInstallclass : PSSnapIn
    {
        /// <summary>
        /// Get a name for this PowerShell snap-in.
        /// This name will be used in registering
        /// this PowerShell snap-in.
        /// </summary>
        public override string Name
        {
            get
            {
                return "MySnapIn";
            }
        }
        /// <summary>
        /// Vendor information for this PowerShell snap-in.
        /// </summary>
        public override string Vendor
        {
            get
            {
                return "fuhj";
            }
        }
        /// <summary>
        /// Gets resource information for vendor. This is a string of format: 
        /// resourceBaseName,resourceName. 
        /// </summary>
        public override string VendorResource
        {
            get
            {
                return "MySnapIn,fuhj";
            }
        }
        /// <summary>
        /// Description of this PowerShell snap-in.
        /// </summary>
        public override string Description
        {
            get
            {
                return "This is a PowerShell Snap-In that include several Cmdlets.";
            }
        }
        public override string DescriptionResource
        {
            get
            {
                return "MySnapIn, This is a PowerShell Snap-In that include several Cmdlets.";
            }
        }
    }
}
