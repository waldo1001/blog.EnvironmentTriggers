table 62123 "Environment Trigger Log"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }

        field(2; Message; Text[2000])
        {
            DataClassification = CustomerContent;
        }
        field(3; CallStack; Text[2000])
        {
            DataClassification = CustomerContent;
        }
        field(4; UserId; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    procedure CreateEntry(pMessage: Text)
    begin
        Init;
        Rec."Entry No." := 0;
        Rec.Message := pMessage;
        rec.UserId := UserId;
        Rec.Insert();
    end;

}