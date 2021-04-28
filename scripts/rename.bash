awk '/^>/{print ">archaea" ++i; next}{print}' < msh6_archaea.fasta > renamed_msh6_archaea.fasta
awk '/^>/{print ">bacteria" ++i; next}{print}' < msh6_bacteria.fasta > renamed_msh6_bacteria.fasta 
awk '/^>/{print ">eukaryot" ++i; next}{print}' < msh6_eukaryotes.fasta > renamed_msh6_eukaryotes.fasta 
awk '/^>/{print ">metagen" ++i; next}{print}' < msh6_metagenomic.fasta > renamed_msh6_metagenomic.fasta 
awk '/^>/{print ">viruses" ++i; next}{print}' < msh6_viruses.fasta > renamed_msh6_viruses.fasta 
cat renamed_msh6_* ref_seqs.fasta > all_msh6.fasta
