require_relative( '../db/sql_runner')


class Department

attr_accessor :id, :name, :number_of_elves

  def initialize ( options )
    @id = options['id'].to_i if options['id']
    @name =  options ['name']
    @number_of_elves = options ['number_of_elves']
  end

  def save()
    sql = "INSERT INTO departments
    (
      name,
      number_of_elves
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @number_of_elves]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM departments"
    results = SqlRunner.run( sql )
    return results.map { |department| Department.new( department ) }
  end

  def self.find( id )
    sql = "SELECT * FROM departments
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Department.new( results.first )
  end

  def update()
    sql = "UPDATE department
    SET
    (
      name,
      number_of_elves
      ) =
      (
        $1, $2,
      )
      WHERE id = $3"
      values = [@name, @number_of_elves]
      SqlRunner.run(sql, values)
    end

  def delete()
    sql = "DELETE FROM departments
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM departments"
    SqlRunner.run( sql )
  end







end
