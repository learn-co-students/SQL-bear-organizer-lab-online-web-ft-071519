describe 'populating the bears table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
    @sql_runner.execute_insert_file
  end

  it 'has 8 bears' do
    expect(@db.execute("SELECT COUNT(*) FROM bears;").flatten[0]).to eq(8)
  end
  
  it 'has an unnamed bear' do
    expect(@db.execute("SELECT COUNT(*) FROM bears WHERE name IS NULL;").flatten[0]).to eq(1)
  end
end
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (9,"Mr. Chocolate", 20, "M", "dark brown", "calm", 0);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (10,"Rowdy", 10, "M", "black", "intense", 1);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (11,"Tabitha", 6, "F", "dark brown", "Nice", 1);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (12,"Sargeant Brown", 19, "M", "Green", "Slimy", 0);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (13,"Melissa", 13, "F", "dark brown", "goofy", 1);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (14,"Grinch", 2, "M", "Black", "Grinchy", 1);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (15,"Wendy", 6, "F", "Blue", "naive", 1);
INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES (16,null, 20, "M", "black", "aggressive", 0);
