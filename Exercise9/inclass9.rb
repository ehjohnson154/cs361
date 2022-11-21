class Datawriter
    def initialize(writer)
        @writer = writer
    end

    def write(data)
        @writer.write(data)
    end
end

class FileWriter

    def initialize(file, connection, write_type)
        @file = file
    end

    def write(data)
        @file.write(data)
    end
end

class NetworkWriter

    def initialize(connection)
        @connection = connection
    end

    def write(data)
        @connection.send(data)
    end
end