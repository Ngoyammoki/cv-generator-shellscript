#!/bin/bash
echo "Please enter the following information:"

read -p "Full Name: " full_name
read -p "Email: " email
read -p "Phone Number: " phone_number
read -p "Address: " address

read -p "Degree (e.g., Bachelor's, Master's): " degree
read -p "Field of Study: " field_of_study
read -p "University Name: " university_name
read -p "Graduation Date: " graduation_date

read -p "Work Experience (yes/no): " work_experience
if [ "$work_experience" = "yes" ]; then
  read -p "Job Title: " job_title
  read -p "Company Name: " company_name
  read -p "Employment Dates: " employment_dates
fi

read -p "Skills (comma-separated): " skills

# Generate CV
echo -e "\nCV for $full_name\n"

echo "Contact Information:"
echo "-------------------"
echo "Email: $email"
echo "Phone Number: $phone_number"
echo "Address: $address"

echo -e "\nEducation:"
echo "----------"
echo "$degree in $field_of_study"
echo "$university_name"
echo "Graduation Date: $graduation_date"

if [ "$work_experience" = "yes" ]; then
  echo -e "\nWork Experience:"
  echo "----------------"
  echo "$job_title at $company_name"
  echo "Employment Dates: $employment_dates"
fi

echo -e "\nSkills:"
echo "-------"
echo "$skills"

# Save CV to file (optional)
read -p "Save CV to file? (yes/no): " save_to_file
if [ "$save_to_file" = "yes" ]; then
  filename="${full_name// /_}_cv.txt"
  echo -e "CV for $full_name\n" > "$filename"
  echo "Contact Information:" >> "$filename"
  echo "-------------------" >> "$filename"
  echo "Email: $email" >> "$filename"
  echo "Phone Number: $phone_number" >> "$filename"
  echo "Address: $address" >> "$filename"

  echo -e "\nEducation:" >> "$filename"
  echo "----------" >> "$filename"
  echo "$degree in $field_of_study" >> "$filename"
  echo "$university_name" >> "$filename"
  echo "Graduation Date: $graduation_date" >> "$filename"

  if [ "$work_experience" = "yes" ]; then
    echo -e "\nWork Experience:" >> "$filename"
    echo "----------------" >> "$filename"
    echo "$job_title at $company_name" >> "$filename"
    echo "Employment Dates: $employment_dates" >> "$filename"
  fi

  echo -e "\nSkills:" >> "$filename"
  echo "-------" >> "$filename"
  echo "$skills" >> "$filename"

  echo "CV saved to $filename"
fi

