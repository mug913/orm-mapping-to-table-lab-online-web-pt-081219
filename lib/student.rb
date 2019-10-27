class Student
  attr_accessor :name, :grade
  attr_reader :id

    def Initialize(name,grade, id=nil)
      @name = name
      @grade = grade
      @id = id
    end

    def self.create_table
      sql = <<-SQL
        CREATE TABLE IF NOT EXISTS student (
          id INTEGER PRIMARY KEY,
          name TEXT,
          grade INTEGER
        )
        SQL
      DB[:conn].execute

    end

end
