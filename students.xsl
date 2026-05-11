<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template for whole document -->
    <xsl:template match="/">
        <html>
        <head>
            <title>Student Information</title>
            <style>
                body{
                    font-family: Arial, sans-serif;
                    background-color:#f2f2f2;
                    margin:0;
                    padding:20px;
                }
                h2{
                    text-align:center;
                    color:darkblue;
                }
                table{
                    width:80%;
                    margin:auto;
                    border-collapse:collapse;
                    background:white;
                }
                th{
                    background:darkblue;
                    color:white;
                    padding:10px;
                    border:1px solid black;
                }
                td{
                    padding:8px;
                    text-align:center;
                    border:1px solid black;
                }
                .name{
                    color:darkred;
                    font-weight:bold;
                }
                .city{
                    color:green;
                }
            </style>
        </head>
        <body>
            <h2>Student Information</h2>
            <table>
                <tr>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Course</th>
                    <th>Year</th>
                    <th>City</th>
                </tr>

                <xsl:apply-templates select="/students/student"/>
            </table>
        </body>
        </html>
    </xsl:template>

    <!-- Template for each student -->
    <xsl:template match="student">
        <tr>
            <td><xsl:apply-templates select="rollno"/></td>
            <td><xsl:apply-templates select="name"/></td>
            <td><xsl:apply-templates select="course"/></td>
            <td><xsl:apply-templates select="year"/></td>
            <td><xsl:apply-templates select="city"/></td>
        </tr>
    </xsl:template>

    <!-- Template for roll number -->
    <xsl:template match="rollno">
        <xsl:value-of select="."/>
    </xsl:template>

    <!-- Template for name -->
    <xsl:template match="name">
        <span class="name">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <!-- Template for course -->
    <xsl:template match="course">
        <xsl:value-of select="."/>
    </xsl:template>

    <!-- Template for year -->
    <xsl:template match="year">
        <xsl:value-of select="."/>
    </xsl:template>

    <!-- Template for city -->
    <xsl:template match="city">
        <span class="city">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

</xsl:stylesheet>