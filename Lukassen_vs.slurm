#!/bin/bash
# --------------------------------------------------------------
### PART 1: Requests resources to run your job.
# --------------------------------------------------------------
### Optional. Set the job name
#SBATCH --job-name=newLukassen

### Optional. Set the output filename.
### SLURM reads %x as the job name and %j as the job ID
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

### REQUIRED. Specify the PI group for this job
#SBATCH --account=sprinkjm

### Optional. Request email when job begins and ends

### Specify high priority jobs
#SBATCH --qos=user_qos_sprinkjm

#SBATCH --mail-type=ALL

### Optional. Specify email address to use for notification
#SBATCH --mail-user=rahulbhadani@email.arizona.edu

### REQUIRED. Set the partition for your job.
#SBATCH --partition=standard


### SBATCH --gres=gpu:2

### REQUIRED. Set the number of cores that will be used for this job.
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=94

### REQUIRED. Set the memory required for this job.
#SBATCH --mem=470gb

### REQUIRED. Specify the time required for this job, hhh:mm:ss
#SBATCH --time=200:00:00


# --------------------------------------------------------------
### PART 2: Executes bash commands to run your job
# --------------------------------------------------------------

### SLURM Inherits your environment. cd $SLURM_SUBMIT_DIR not needed
pwd; hostname; date

echo "CPUs per task: $SLURM_CPUS_PER_TASK"
### Load required modules/libraries if needed
module load R/4.0.0
cd /home/u27/rahulbhadani
now=$(date +"%Y_%m_%d_%H_%M_%S")
echo $now
Rscript /home/u27/rahulbhadani/VST/use_case_Lukassen.R > /home/u27/rahulbhadani/SLURM/Predict_Lukassen_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#now=$(date +"%Y_%m_%d_%H_%M_%S")
#echo $now
#Rscript /home/u27/rahulbhadani/VST/use_case_Jurkat_NEW.R > /home/u27/rahulbhadani/SLURM/Predict_Jurkat_$now.txt
#date
echo "DONE!!!!"
