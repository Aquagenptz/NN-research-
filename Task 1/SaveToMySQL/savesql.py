import pymysql
import time

class MySQL_save:

    def __init__(self, host_name, user_name, password, db_name):

        self.host_name = host_name
        self.user_name = user_name
        self.password = password
        self.db_name = db_name
        self.error = 'Save to base OK!'

        self.create_table()

    # create table if not exist in db
    def create_table(self):

        try:
            con = pymysql.connect(self.host_name, self.user_name, self.password, self.db_name)
            cur = con.cursor()
            cur.execute("""CREATE TABLE IF NOT EXISTS find_object(
            ID INT AUTO_INCREMENT PRIMARY KEY,
            file_name VARCHAR(255),
            detect_object CHAR(20),
            position_start_x INT,
            position_start_y INT,
            position_end_x INT,
            position_end_y INT,
            time_stamp INT)""")
            con.commit()

        except pymysql.Error as error:
            self.error = error

        finally:
            cur.close()
            con.close()

    # Insert data to table in db
    def insert_data(self, file_name, detect_object, position_start_x, position_start_y, position_end_x, position_end_y):

        query = """INSERT INTO find_object (file_name, detect_object, position_start_x, position_start_y, position_end_x, position_end_y, time_stamp) VALUES (%s, %s, %s, %s, %s, %s, %s) """

        args = [file_name, detect_object, position_start_x, position_start_y, position_end_x, position_end_y, int(time.time())]

        try:
            con = pymysql.connect(self.host_name, self.user_name, self.password, self.db_name)
            cur = con.cursor()
            cur.execute(query, args)
            con.commit()

        except pymysql.Error as error:
            self.error = error

        finally:
            cur.close()
            con.close()
            return self.error
