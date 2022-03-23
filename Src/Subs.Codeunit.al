codeunit 62123 "Subs"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Triggers", 'OnAfterCopyEnvironmentPerCompany', '', false, false)]
    local procedure OnAfterCopyEnvironmentPerCompany(SourceEnvironmentType: Option; SourceEnvironmentName: Text; DestinationEnvironmentType: Option; DestinationEnvironmentName: Text);
    begin
        LogEntry(StrSubstNo('OnAfterCopyEnvironmentPerCompany - %1', CompanyName));
    end;

    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Triggers", 'OnAfterCopyEnvironmentPerDatabase', '', false, false)]
    // local procedure OnAfterCopyEnvironmentPerDatabase(SourceEnvironmentType: Option; SourceEnvironmentName: Text; DestinationEnvironmentType: Option; DestinationEnvironmentName: Text);
    // begin
    //     LogEntry(StrSubstNo('OnAfterCopyEnvironmentPerDatabase'));
    // end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Triggers", 'OnAfterCopyEnvironmentToSandboxPerCompany', '', false, false)]
    local procedure OnAfterCopyEnvironmentToSandboxPerCompany();
    begin
        LogEntry(StrSubstNo('OnAfterCopyEnvironmentToSandboxPerCompany - %1', CompanyName));
    end;

    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Triggers", 'OnAfterCopyEnvironmentToSandbox', '', false, false)]
    // local procedure OnAfterCopyEnvironmentToSandbox();
    // begin
    //     LogEntry(StrSubstNo('OnAfterCopyEnvironmentToSandbox'));
    // end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearCompanyConfig', '', false, false)]
    local procedure OnClearCompanyConfig(CompanyName: Text; SourceEnv: Enum "Environment Type"; DestinationEnv: Enum "Environment Type");
    begin
        LogEntry(StrSubstNo('OnClearCompanyConfig - %1', CompanyName()));
    end;

    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Environment Cleanup", 'OnClearDatabaseConfig', '', false, false)]
    // local procedure OnClearDatabaseConfig(SourceEnv: Enum "Environment Type"; DestinationEnv: Enum "Environment Type");
    // begin
    //     LogEntry(StrSubstNo('OnClearDatabaseConfig'));
    // end;

    local procedure LogEntry(pMessage: Text)
    var
        EnvironmentTriggerLog: Record "Environment Trigger Log";
    begin
        EnvironmentTriggerLog.CreateEntry(pMessage);
    end;
}