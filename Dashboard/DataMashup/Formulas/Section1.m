section Section1;

shared Pessoas = let
    Fonte = Sql.Database("DELL-I15-A30S", "TST_PBI"),
    dbo_Pessoas = Fonte{[Schema="dbo",Item="Pessoas"]}[Data]
in
    dbo_Pessoas;