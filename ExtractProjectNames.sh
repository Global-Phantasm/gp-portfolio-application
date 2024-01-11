projects=$(grep -E "include |project" settings.gradle | awk -F"'" '{print $2}')

project_list=$(IFS=,; echo "${projects[*]}")

echo "::set-output name=project_list::$project_list"