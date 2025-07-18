table 50101 "Student"
{
    Caption = 'Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = CustomerContent;
            NotBlank = true;
        }

        field(2; "Name"; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }

        field(3; "Class"; Text[30])
        {
            Caption = 'Class';
            DataClassification = CustomerContent;
        }

        field(4; "Phone"; Text[15])
        {
            Caption = 'Phone';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}