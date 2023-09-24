<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Студенты</title>
</head>

<body>
    <table>
        <thead>
            <tr>
                <th style="text-align: center"><strong>Номер</strong> </th>
                <th style="text-align: center"><strong>Имя</strong></th>
                <th style="text-align: center"><strong>Фамилия</strong></th>
                <th style="text-align: center"><strong>Отчество</strong></th>
                <th style="text-align: center"><strong>Емаил</strong></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($students as $student)
                <tr>
                    <td style="width: 60px; text-align: center">{{ $student->id }}</td>
                    <td style="width: 150px; text-align: center">{{ $student->first_name }}</td>
                    <td style="width: 150px; text-align: center">{{ $student->last_name }}</td>
                    <td style="width: 160px; text-align: center">{{ $student->surname }}</td>
                    <td style="width: 150px; text-align: center">{{ $student->email }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
