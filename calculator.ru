# edit by russysky :)

import math

print("Тебя приветствует калькулятор!")
print("Доступные операции: +, -, *, /, //, %, **, sqrt, abs, sin, cos, tan, log")
print("Для выхода напиши: exit")

while True:
    operation = input("\nВыбери операцию: ")

    if operation == "exit":
        print("Выход из калькулятора. Пока!")
        break

    # Двоичные операции (2 числа)
    if operation in ["+", "-", "*", "/", "//", "%", "**"]:
        try:
            num1 = float(input("Введи первое число: "))
            num2 = float(input("Введи второе число: "))

            if operation == "+":
                result = num1 + num2
            elif operation == "-":
                result = num1 - num2
            elif operation == "*":
                result = num1 * num2
            elif operation == "/":
                if num2 == 0:
                    print("Операция невозможна: деление на ноль.")
                    continue
                result = num1 / num2
            elif operation == "//":
                if num2 == 0:
                    print("Операция невозможна: целочисленное деление на ноль.")
                    continue
                result = num1 // num2
            elif operation == "%":
                if num2 == 0:
                    print("Операция невозможна: остаток от деления на ноль.")
                    continue
                result = num1 % num2
            elif operation == "**":
                result = num1 ** num2

            print("Результат:", result)
        except ValueError:
            print("Ошибка: введено не число.")

    # Унарные операции (1 число)
    elif operation in ["sqrt", "abs", "sin", "cos", "tan", "log"]:
        try:
            num = float(input("Введи число: "))

            if operation == "sqrt":
                if num < 0:
                    print("Ошибка: корень из отрицательного числа.")
                    continue
                result = math.sqrt(num)
            elif operation == "abs":
                result = abs(num)
            elif operation == "sin":
                result = math.sin(math.radians(num))
            elif operation == "cos":
                result = math.cos(math.radians(num))
            elif operation == "tan":
                result = math.tan(math.radians(num))
            elif operation == "log":
                if num <= 0:
                    print("Ошибка: логарифм только для положительных чисел.")
                    continue
                result = math.log(num)

            print("Результат:", result)
        except ValueError:
            print("Ошибка: введено не число.")

    else:
        print("Неизвестная операция. Попробуй снова.")
