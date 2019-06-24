using VegaDatasets, VegaLite
dataset("cars") |> @vlplot(:point, x=:Accelaration, y=:Miles_per_Gallon)

if true
    println("TRUE")
else
    println("False")
end