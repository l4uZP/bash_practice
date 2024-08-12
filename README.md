## Bash scripting

Shebang = #! to specify the interpreter

**Conditional execution:** `if-else-fi`
Format:

```bash
if [ variable -conditional value ]
then
	<actions>
elif [ variable -conditional value ]
then
	<actions>
else
	<actions>
fi
```

**Arguments, variables and arrays:**
A bash script can receive from 0 to 9 arguments ($1 ... $9). Argument $0 is reserved for the script.

- Special variables:
	$ -> IFS = Internal Field Separator +

```
# number of arguments
@ list of arguments
n especific argument
$ PID of current process
? exit status of the script
```

- Variables
	Assignment without $ and without spaces: variable="something"
- Arrays
	Declaration: variable=(value1 value2 etc)
	Access: ${variable[index]}

**Comparison operators:**
- string: we should double quote the variable first
	- `==, != (equals, not equals)`
	- `<, > (less, greater in ASCII alphabetical order. Needs double square braquets [[]])`
	- `-z, -n (if is null, if is not null)` 
- integer: 
	- `-eq, -ne (equals, not equals)`
	- `-lt, -le (less, less or eq)`
	- `-gt, -ge (greater, greater or eq)`
- file: to find specific permissions or if exists
	- `-e (if exists)`
	- `-f (if is a file)`
	- `-d (if is a dir)`
	- `-L (if is a sim link)`
	- `-N (if file was modified after it was last read)`
	- `-O (if the current user owns the file)`
	- `-G (if the file's group id matches the current user's)`
	- `-s (if the file has a greater size than 0)`
	- `-r (if the file has read permission)`
	- `-w (if the file has write permission)`
	- `-x (if the file has execute permission)`
- Boolean and logical: Needs double brackets in order to make more complex conditionals
	- `-z (check if a chain is empty)`
	- `! (logical negotation NOT)`
	- `&& (logical AND)`
	- `|| (logical OR)`

**Arithmetic:**
For math operations or modify integers
- `+, -, *, /, % (add, subs, mult, div, mod)`
- `var++, var -- (increase, decrease var by 1)`
- `${#var}`

**Input and output:**

- Input:
```bash 
read -p "Write something:" value
```
*Read: command for input, -p: input on the same line, "": text, value: variable which will store the input.*

- Output:
We can redirect our output but this could take to much time.
We can use `tee` utility which allow us to get results immediately.

```bash
netrange=$(whois $ip | grep "NetRange\|CIDR" | tee -a CIDR.txt)
```
*tee: command that transfers output to a file, -a: flag that avoid overwriting file, instead it supplement with new data, CIDR.txt: name of the file*

**Flow control:** Each control structure is a branch or a loop.
- Loops:  
	- If-else
	- Case (compares the variable with the exact value)
- Branch:
	- For
	- While (runs while the value is true or if its stopped with a break)
	- Until (runs until the value is false )

```bash
case <expresion> in
	var1 ) statements ;;
	var2 ) statements ;;
	var3 ) statements ;;
esac
```

**Functions:**
Must be defined at the beginning of the script .
For calling a function you only have to write it´s name where you want to execute it.
All defined variables are processed globally unless they are declared *local*.

```bash
# way 1 to define a function
function name(){
	<actions>
}
# way 2 to define a function
name(){
	<actions>
}
```

- Parameters
```bash
# calling a function with parameters
some_function "param1" "param2"
```
- Returns
	- Each child process returns a return code to the parent process
	- Used to determine the status of execution of the process
	- It helps the parent process to decide the program flow

| return code | description                    |
| ----------- | ------------------------------ |
| 1           | general errors                 |
| 2           | misuse of shell builtins       |
| 126         | command invoked cannot execute |
| 127         | command not found              |
| 128         | invalid argument to exit       |
| 128+n       | fatal error signal n           |
| 130         | script terminated by ctrl c    |
| 255\*       | exit status out of range       |

**Debugging:**
For checking typos.
Code analysis.
Find vulnerabilities in programs.

`-x: xtrace`
`-v verbosity`

**Notes:**
In order to create a file and sets its permissions on one single command
```bash
install -m 700 /dev/null filename.txt
```

You can also execute a file without permissions using: 
```bash
bash script.sh
```