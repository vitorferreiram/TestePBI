section Section1;

shared Pessoas = let
    Fonte = Sql.Database("DELL-I15-A30S", Database),
    dbo_Pessoas = Fonte{[Schema="dbo",Item="Pessoas"]}[Data]
in
    dbo_Pessoas;

[ Description = "Seleção do database" ]
shared Database = null meta [IsParameterQuery=true, List={"TST_PBI", "TST_PBI_PROD"}, DefaultValue="TST_PBI", Type="Text", IsParameterQueryRequired=true];