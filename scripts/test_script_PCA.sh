##Test script for running PCA in PLINK

infile=/scratch/directed_studies/filtered_vcf/SCHEME_4.Minilineage.M4_n7_Rfilter.singleSNP.ctgs.vcf
outfile=Minilineage_PCA


plink --vcf $infile --double-id --allow-extra-chr --make-bed --out temp_data

plink --bfile temp_data --allow-extra-chr --set-missing-var-ids @:# --make-bed --out sorted_data

plink --bfile sorted_data --allow-extra-chr --pca --out $outfile

