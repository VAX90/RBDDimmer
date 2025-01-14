# RBDdimmer

## Supported Boards and Pin Mapping

<table style="border-collapse: separate; border-spacing: 0; padding: 5px;">
    <tbody>
    <tr style="background-color: lightblue">
        <td style="border: 1px solid #bbb; padding: 10px 15px;"><b>Board</b></td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2"><b>INPUT Pin <br>Zero Cross</b></td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2"><b>OUTPUT Pin</b></td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">Leonardo</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D7 (NOT CHANGABLE)</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D0-D6, D8-D13</td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">Mega</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D2 (NOT CHANGABLE)</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D0-D1, D3-D70</td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">UNO<br>NANO</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D2 (NOT CHANGABLE)</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D0-D1, D3-D20</td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">UNO R4 WiFi</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D2 (NOT CHANGABLE)</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;" colspan="2">D0-D1, D3-D13</td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">ESP8266</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>D1(IO5)</li>
                <li>D5(IO14)</li>
                <li>D7(IO13)</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>D2(IO4)</li>
                <li>D6(IO12)</li>
                <li>D8(IO15)</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>D0(IO16)</li>
                <li>D2(IO4)</li>
                <li>D6(IO12)</li>
                <li>D8(IO15)</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>D1(IO5)</li>
                <li>D5(IO14)</li>
                <li>D7(IO13)</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">ESP32</td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>GPIO36</li>
                <li>GPIO39</li>
                <li>GPIO32</li>
                <li>GPIO25</li>
                <li>GPIO27</li>
                <li>GPIO12</li>
                <li>GPIO7</li>
                <li>GPIO2</li>
                <li>GPIO4</li>
                <li>GPIO17</li>
                <li>GPIO18</li>
                <li>GPIO21</li>
                <li>GPIO22</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>GPIO34</li>
                <li>GPIO35</li>
                <li>GPIO33</li>
                <li>GPIO26</li>
                <li>GPIO14</li>
                <li>GPIO13</li>
                <li>GPIO15</li>
                <li>GPIO0</li>
                <li>GPIO16</li>
                <li>GPIO5</li>
                <li>GPIO19</li>
                <li>GPIO1</li>
                <li>GPIO23</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>GPIO32</li>
                <li>GPIO25</li>
                <li>GPIO27</li>
                <li>GPIO12</li>
                <li>GPIO15</li>
                <li>GPIO0</li>
                <li>GPIO16</li>
                <li>GPIO5</li>
                <li>GPIO19</li>
                <li>GPIO3</li>
                <li>GPIO22</li>
            </ul>
        </td>
        <td style="border: 1px solid #bbb; padding: 10px 15px;">
            <ul style="list-style-type: none; margin-left: -30px;">
                <li>GPIO33</li>
                <li>GPIO26</li>
                <li>GPIO14</li>
                <li>GPIO13</li>
                <li>GPIO2</li>
                <li>GPIO4</li>
                <li>GPIO17</li>
                <li>GPIO18</li>
                <li>GPIO21</li>
                <li>GPIO1</li>
                <li>GPIO23</li>
            </ul>
        </td>
    </tr>
    </tbody>
</table>

## Features

This library simplifies the code needed to control dimmable lamps and AC loads. See full documentation in the examples directory.

### Installation
1. Download or clone the repository.
2. Copy it to your `libraries` folder.
3. Include it in your Arduino project:
   ```cpp
   #include <RBDdimmer.h>
