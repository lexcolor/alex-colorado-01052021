table 50100 "Exported GL Entries"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Entry No.', ESP = 'Num ENtrada';
        }
        field(3; "G/L Account No."; Code[20])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'GL Account', ESP = 'Num Cuenta';
        }
        field(4; "Posting Date"; Date)
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Posting Date', ESP = 'Fecha Reg';
        }
        field(5; "Document Type"; Enum "Gen. Journal Document Type")
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Document Type', ESP = 'Tipo Documento';
        }
        field(6; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Doc No.', ESP = 'Num DOc';
        }
        field(7; Description; Text[100])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Description', ESP = 'Descripcion';
        }
        field(10; "Bal. Account No."; Code[20])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Bal. Account No.', ESP = 'Cod Cliente';
            // Datos filtrados por "Bal. Account Type" = Customer
        }
        field(17; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Amount', ESP = 'Monto';
        }
        field(28; "Source Code"; Code[10])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Source Code', ESP = 'Origen';
        }
        field(42; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Quantity', ESP = 'Cantidad';
        }
        field(43; "VAT Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'VAT Amount', ESP = 'Monto IVA';
        }
        field(47; "Reason Code"; Code[10])
        {
            DataClassification = CustomerContent;
            CaptionML = ENU = 'Reason Code', ESP = 'Motivo';
        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}