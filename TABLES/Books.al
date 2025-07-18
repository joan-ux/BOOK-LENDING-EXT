table 50100 "books"
{
    DataClassification = CustomerContent;
    Caption = 'Books';
    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(2; "Title"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(3; "Author"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(4; "ISBN"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(5; "Available"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}

