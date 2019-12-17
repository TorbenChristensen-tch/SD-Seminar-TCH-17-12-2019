tableextension 50100 tabext00_ResourceExt extends Resource
//Tableextension Resorce Table
{
    fields
    {
        modify("Profit %")

        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = AccountData;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
            Caption = 'Resource Type';

        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = AccountData;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }

    }
}