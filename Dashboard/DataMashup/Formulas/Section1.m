section Section1;

shared Tabela = let
    Fonte = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WCsssyS9S0lEyMlWK1YlWck9MKspMzUkEiViARZxzUjNTUoF8E0sw3z8lMyc/D8g3NVaKjQUA", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [Nome = _t, Idade = _t]),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"Nome", type text}, {"Idade", Int64.Type}})
in
    #"Tipo Alterado";