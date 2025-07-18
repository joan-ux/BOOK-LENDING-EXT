table 50102 "Lending"
{
    DataClassification = CustomerContent;
    Caption = 'Lendings';

    fields
    {
        field(1; "Lending ID"; Code[20])
        {
            Caption = 'Lending ID';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(2; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(3; "Book ID"; Integer)
        {
            Caption = 'Book ID';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(4; "Lending Date"; Date)
        {
            Caption = 'Lending Date';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(5; "Return Date"; Date)
        {
            Caption = 'Return Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Lending ID")
        {
            Clustered = true;
        }
    }
}