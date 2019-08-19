# robot-report-generator [![Build Status](https://travis-ci.org/avijit90/robot-report-generator.svg?branch=master)](https://travis-ci.org/avijit90/robot-report-generator)
A java and freemarker based utility that can be used to generate rich UI reports from robot test results.

# Tech-stack
- Java 8
- Maven
- Apache Freemarker
- HTML
- CSS

# Build
- Built using maven:   
    `mvn clean install` 
     
This will create a jar file named **robot-report-generator.jar** in the target directory.

# Running the Application 
Run application using command :  
`java -jar robot-report-generator.jar input=<path_to_robot_files_dir> output=<output_dir>`  <br/>
**Note**: the `path_to_robot_file_dir` and `output_dir` are optional parameters.  
If you are not running the command from the same folder as the robot files you can specify the relevant path.
If these parameters are not specified, the application will look in the current dir for files to process.
The generated reports are available inside the **robot_report** folder.