#Method to get average of grades
function gradeAvrg(sum) {
	avg =  sum / 3;
	return avg;
}

#Method to get passing or failing mark
function passOrFail(gradeAvg) {
	if (gradeAvg >= 70) {
		return "Pass";	
	}
	else if (gradeAvg < 70) {
		return "Fail";	
	}
}

#Script execution starts here
BEGIN { FS = "," }
NR >1 {
	stuID = $1;
	stuName = $2;
	grade1 = $3;
	grade2 = $4;
	grade3 = $5;

	sum = grade1 + grade2 + grade3;
	gradeAvg = gradeAvrg(sum);
	passOrFailGrade = passOrFail(gradeAvg);

	# filling associative array
	stuInfo[stuID] = stuName;
	stuSum[stuID] = sum;
	stuGrade[stuID] = passOrFailGrade;
	stuAvg[stuID] = gradeAvg;

	if (NR == 2) { # makes first student as highest and lowest scoring
		highScore = sum;
		highStudent = stuName;
		lowScore = sum;
		lowStudent = stuName;	
	}
	if (sum >= highScore){ # checks rest of students for high score
		highScore = sum;
		highStudent = stuName;
	}
	if (sum <= lowScore) { # checks rest of students for low score
		lowScore = sum;
		lowStudent = stuName;	
	}
		
}
END {
	for (stuID in stuSum) { # prints everything in array
		print stuID, "Student name: ", stuInfo[stuID],
		"Total score: ", stuSum[stuID],
		"Average score: " stuAvg[stuID],
		"Status: " stuGrade[stuID];	
	}
	print "\n"
	# print top and lowest scoring students
	print "Lowest Student: ", lowStudent, " : ", lowScore;
	print "Highest Student: ", highStudent, " : ", highScore;
}


