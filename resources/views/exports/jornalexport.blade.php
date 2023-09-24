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
                <th style="text-align: center"><strong>Наставник</strong></th>
                <th style="text-align: center"><strong>Дата</strong></th>
                <th style="text-align: center"><strong>Содержание</strong></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($jornals as $jornal)
                <tr>
                    <td style="width: 60px; text-align: center">{{ $jornal->id }}</td>
                    <td style="width: 250px; text-align: center">{{ $jornal->mentor->getFio() }}</td>
                    <td style="width: 150px; text-align: center">{{ $jornal->date }}</td>
                    <td style="width: 460px;">{{ $jornal->description }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
