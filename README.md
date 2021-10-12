# Welcome to my useful set of tools for Bash / Cmd / Python!

<table><tr>
    <th rowspan="7">Bash</th>
    <th>Command</th>
    <th>Description</th>
    <th>Example</th>
</tr>
<tr>
    <td><code>call_silent</code></td>
    <td>Run a process silently.</td>
    <td><code>call_silent proc.exe...</code></td>
</tr>
<tr>
    <td><code>path_posix</code></td>
    <td>Convert path from Windows to POSIX.</td>
    <td><code>P=`path_posix "C:/Users/"`</code></td>
</tr>
<tr>
    <td><code>path_windows</code></td>
    <td>Convert path from POSIX to Windows.</td>
    <td><code>P=`path_windows "C:/Users/"`</code></td>
</tr>
<tr>
    <td><code>path_auto</code></td>
    <td>Convert path by auto detection of system (msys/win32 otherwise POSIX.)</td>
    <td><code>P=`path_auto "C:/Users/"`</code></td>
</tr>
<tr>
    <td><code>prnt</code></td>
    <td>Beautifully prints tag, level and a message (depends on <span style="color: cyan;">$KM_DEBUG</span> for the DEBUG level.)</td>
    <td><code>prnt tag error "Woops!"</code></td>
</tr>
<tr>
    <td><code>spin</code></td>
    <td>Starts/stops a spinner on your terminal.</td>
    <td><code>spin on "Loading..."</code></td>
</tr>
</table>

Each command could have a few dependencies, please check the corresponding source code(s).

An environment variable <span style="color: cyan;">$KM_USEFUL_DIR</span> must be defined (at least a value of '.') in order to make this work. 

See the `.env.example` file.