class Student
    attr_accessor :schedule

    MAX_COURSES = 5

    def initialize() # TODO Pass in schedule?
        schedule = Schedule.new()
    end

    def remove_from_schedule(course, quarter_id)
      #schedule.quarter[quarter_id].course_list.remove(course)
      schedule.remove(course,quarter_id)
    end

    def add_to_schedule(course, schedule, quarter_id)
      quarter = schedule.quarter[quarter_id]
      course_list = quarter.course_list
      max_courses = course_list.maximum_number_of_courses


    end
end

#all pseudocode down here

class Schedule
    def add(course, quarter_id)
    auarter = @quarter[quarter_id]
    auarter.add(course)
    end
    def remove(course, quarter_id)
    quarter = @quarter[quarter_id]
    quarter.remove(course)
end

class Quarter

    def add(
    course_list = quarter.course_list
    max_courses = course_list.maximum_number_of_courses
    if max_courses < MAX_COURSES
        course_list.add(course)
    end

end

    

