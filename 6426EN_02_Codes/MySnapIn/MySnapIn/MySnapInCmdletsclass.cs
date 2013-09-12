using System;
using System.Collections.Generic;
using System.Text;
using System.Management.Automation;

namespace MySnapIn
{
    #region GetHelloCommand
    //a most simple cmdlet example
    [Cmdlet(VerbsCommon.Get, "Hello")]
    public class GetHelloCommand : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject("Hello!!");
        }
    }
    #endregion
    #region SayHelloWorldCommand
    //Custom verbs, take parameters, with logic judgment cmdlet examples
    [Cmdlet("Say", "HelloWorld")]
    public class SayHelloWorldCommand : Cmdlet
    {
        private string argus;
        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty]
        public string Args
        {
            get { return argus; }
            set { argus = value; }
        }
        protected override void ProcessRecord()
        {
            if (argus != null && argus.Length > 0)
            {
                Console.WriteLine("Hello World:" + argus);
            }
            else
                Console.WriteLine("Need some parameter");
        }
    }
    #endregion
    #region AddTestCommand
    //Complete cmdlet example with BeginProcessing(),EndProcessing(),ProcessRecord(),StopProcessing() method
    [Cmdlet(VerbsCommon.Add, "Test")]
    public class AddTestCommand : Cmdlet
    {//Initialization, ready for data
        protected override void BeginProcessing()
        {
            WriteObject("BeginProcessing method - Execution has begun");
        }
        //Implement operation
        protected override void ProcessRecord()
        {
            WriteObject("ProcessRecord method - Executing the main code");
            base.ProcessRecord();
        }
        //Complete, clear scene
        protected override void EndProcessing()
        {
            WriteObject("EndProcessing method - Finalizing the execution");
            base.EndProcessing();
        }
        //Break down, rollback operation
        protected override void StopProcessing()
        {
            WriteObject("StopProcessing method - Break down, rollback operation");
            base.StopProcessing();
        }
    }
    #endregion
    #region GetLifeCycleCommand
    //Check Snap-in cmdlet's life cycle examples
    public class TaskManager
    {
        private static int runCount = 0;
        public static int Run()
        {
            return runCount++;
        }
    }
    [Cmdlet(VerbsCommon.Get, "LiftCycle")]
    public class GetLifeCycleCommand : Cmdlet
    {
        protected override void ProcessRecord()
        {
            WriteObject(TaskManager.Run());
            base.ProcessRecord();
        }
    }
    #endregion
    #region GetComputerNameCommand
    //The example for capture the host name
    [Cmdlet(VerbsCommon.Get, "ComputerName")]
    public class GetComputerNameCommand : Cmdlet
    {//
        protected override void ProcessRecord()
        {
            WriteObject(System.Environment.GetEnvironmentVariable("ComputerName"));
            base.ProcessRecord();
        }
    }
    #endregion    
}
