page 62123 "Environment Trigger Log Entry"
{
    ApplicationArea = All;
    Caption = 'Environment Trigger Log Entry';
    PageType = List;
    SourceTable = "Environment Trigger Log";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Editable = false;

                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    ApplicationArea = All;
                }
                field(Message; Rec.Message)
                {
                    ToolTip = 'Specifies the value of the Message field.';
                    ApplicationArea = All;
                }
                field(CallStack; Rec.CallStack)
                {
                    ToolTip = 'Specifies the Call Stack';
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    begin
                        Message(Rec.CallStack);
                    end;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CreateEntry)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Create;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.CreateEntry('From Action on Page');
                end;
            }
        }
    }
}
