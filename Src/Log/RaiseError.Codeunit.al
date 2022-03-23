codeunit 62124 "RaiseError"
{
    trigger OnRun()
    begin
        error('to track the Call Stack');
    end;
}