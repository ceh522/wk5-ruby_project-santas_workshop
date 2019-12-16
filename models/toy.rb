require_relative( '../db/sql_runner' )


class Toy

  attr_accessor :id, :name, :description, :stock_quantity, :value, :department_name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @stock_quantity = options['stock_quantity'].to_i
    @value = options['value'].to_i
    @department_name = options ['department_name']

  end

  def save()
    sql = "INSERT INTO toys
    (
      name,
      description,
      stock_quantity,
      value
      department_name
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@name, @description, @stock_quantity, @value, @department_name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM toys"
    results = SqlRunner.run( sql )
    return results.map { |toy| Toy.new( toy ) }
  end

  def self.find( id )
    sql = "SELECT * FROM toys
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Toy.new( results.first )
  end

  def update()
    sql = "UPDATE toys
    SET
    (
      name,
      description,
      stock_quantity,
      value
      department_name
      ) =
      (
        $1, $2, $3, $4, $5
      )
      RETURNING id"
      values = [@name, @description, @stock_quantity, @value, @department_name, @id]
      SqlRunner.run(sql, values)
    end

    def delete()
      sql = "DELETE FROM toys
      WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end

    def self.delete_all
      sql = "DELETE * FROM toys"
      SqlRunner.run( sql )
    end



  end
