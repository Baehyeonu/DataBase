import pymysql

connection = pymysql.connect(
    host = 'localhost',
    user='root',
    password='hyeonu',
    db='airbnb',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)

with connection.cursor() as cursor:
    # # 문제 1: 새로운 제품 추가
    # sql = "INSERT INTO Products(productName, price, stockQuantity) VALUES (%s,%s,%s)"
    # cursor.execute(sql, ('python Book', 10000, 10))
    # connection.commit()
    
    # # 문제2 : 고객 목록 조회
    # cursor.execute("SELECT * FROM Products")
    # for book in cursor.fetchall():
    #     print(book)
        
    #문제3 : 제품 재고 업데이트
    # sql = "UPDATE Products SET stockQuantity = stockQuantity - %s WHERE productID = %s"
    # cursor.execute(sql,(1,1))
    # connection.commit()

    #문제4: 고객별 총 주문 금액
    # sql = "SELECT customerID, SUM(totalAmount) FROM Orders GROUP BY customerID"
    # cursor.execute(sql)
    # datas = cursor.fetchall()
    # print(datas)

    #문제 5: 고객 이메일 업데이트
    # sql = "UPDATE Customers SET email = %s WHERE customerID = %s"
    # cursor.execute(sql,('update@update.com',1))
    # connection.commit()

    #문제 6: 주문 취소
    # sql = "DELETE FROM Orders WHERE orderID = %s"
    # cursor.execute(sql, (14))
    # connection.commit()

    #문제 7: 특정 제품 검색
    # sql = "SELECT * FROM Products WHERE productName LIKE %s"
    # cursor.execute(sql, ('%Book%'))
    # datas = cursor.fetchall()

    # for data in datas:
    #     print(data['productName'])

    #문제 8: 특정 고객의 모든 주문 조회
    # sql = 'SELECT * FROM Orders WHERE customerID =%s'
    # cursor.execute(sql, (1))
    # datas = cursor.fetchall()

    # for data in datas:
    #     print(data)

    #문제 9: 가장 많이 주문한 고객 찾기
    sql = """
        SELECT customerID, COUNT(*) as orderCount FROM Orders
        GROUP BY customerID ORDER BY orderCount DESC LIMIT 1
        """
    cursor.execute(sql)

    data = cursor.fetchone()
    print(data)
    
cursor.close()
