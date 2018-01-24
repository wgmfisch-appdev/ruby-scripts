# Ruby Scripts

## Introduction

In this project, we're going to write a bunch of small Ruby programs that do a variety of things. Our primary objective is to give you a chance to **ask questions** about the concepts you encountered in the [Introduction to Ruby](https://guides.firstdraft.com/introduction-to-ruby.html).

Hopefully the exercises will also give you some ideas about what to build for your project — we'll see open-source libraries, web scraping, and maybe even sending emails.

BUT — again, your main task is to **ask questions** about [variables, methods, arguments, loops, blocks, arrays, hashes, etc](https://guides.firstdraft.com/glossary-of-terms.html).

## Setup

Follow the usual setup steps:

 1. Ensure that you've forked this repository.
 1. Follow the [Starting on a project with Cloud9](https://guides.firstdraft.com/getting-started-with-cloud9.html) guide to set up your workspace.
 1. I always recommend closing as many browsers tabs as possible from the last project you were working on — it's very easy to get confused with too many tabs going.
 1. At a Terminal prompt, set up the project (install a bunch of powerful libraries on the workspace, whatever the project depends upon, etc):

    ```
    bin/setup
    ```

 1. Open a new Terminal prompt by clicking the green ⨁.
 1. Usually, at this point we launch our Rails application server by clicking Run Project. You can go ahead and do so and navigate to the running application, but we're not going to be building web pages this time.

     Instead, at a Terminal prompt after the `$`, run a tiny little command-line script that I've prepared:

    ```
    $ rails hi
    ```

    You should see something like

    ```
    "Well, hello there, AppDev!"
    ```

  1. The code to make this happen is in `lib/tasks/hello.rake`; read it and try to make out what's what.
  1. There's a Getting Started video on Canvas that you should watch first.

## Tasks to write

We're going to write some more command-line-only Ruby programs.

### rails bye

Create a new file, `lib/tasks/bye.rake`, and then add code to it similar to the code in `hello.rake` such that:

```
rails bye
```

outputs

```
"See you next time, AppDev!"
```

### rails todays_date

In `todays_date.rake`, write some code such that the command

```
rails todays_date
```

outputs

```
Wed, 11 Apr 2018
```

(but replace with the real current date)

### rails tgif

In `tgif.rake`, write some code such that the command

```
rails tgif
```

outputs

```
"Yay, it's Friday!"
```

if today is Friday; if not, it should output

```
"Nope, not yet :/"
```

### rails fortune

In `fortune.rake`, write some code such that the command

```
rails fortune
```

outputs a random fortune from the provided list, something like

```
"Bide your time, for success is near"
```

Each time `rails fortune` is run, a different fortune should be displayed.

### rails quote

In `quote.rake`, write some code such that the command

outputs a random quotation from the provided list, something like

```
"A person who chases two rabbits catches neither. -- Confucius"
```

Each time `rails quote` is run, a different quotation should be displayed.

### rails play_rock

In `rps.rake`, write some code such that the command

```
rails play_rock
```

outputs "We played rock!", select a random move for the computer, and output the outcome; something like

```
"We played rock."
"The computer chose rock."
"We tied!"
```

Each time `rails play_rock` is run, a different computer move and outcome should be displayed.

### rails play_paper

In `rps.rake`, write some code such that the command

```
rails play_paper
```

In `rps.rake`, write some code such that the command

outputs "We played paper!", select a random move for the computer, and output the outcome; something like

```
"We played paper."
"The computer chose scissors."
"We lost!"
```

Each time `rails play_paper` is run, a different computer move and outcome should be displayed.

### rails play_scissors

In `rps.rake`, write some code such that the command

```
rails play_scissors
```

outputs "We played scissors!", select a random move for the computer, and output the outcome; something like

```
"We played scissors."
"The computer chose paper."
"We won!"
```

Each time `rails play_scissors` is run, a different computer move and outcome should be displayed.

### rails example_input_from_file

Examine `file_input.rake`. `rails example_input_from_file` is already complete, but read it and try to figure out what it is doing.

Locate `lib/input_files/example_input.txt`, modify the copy in it, and then run `rails example_input_from_file` again.

Create your own input file, put some content in it, and make `rake your_own_input_from_file` do something interesting.

### rails word_count

In `word_count.rake`, write some code such that the command

```
rails word_count
```

reads the contents of `lib/input_files/word_count_text.txt` and, based on what's in it, output something like

```
"File input: The first draft is just you telling yourself the story.\n"
"Character count (with spaces): 55"
"Character count (without spaces): 46"
"Occurrences of 'story': 1"
```

Try modifying the copy in `word_count_text.txt` and see if your program still produces the correct values.

### rails loan_payment

In `loan_payment.rake`, write some code such that the command

```
rails loan_payment
```

reads the contents of

 - `lib/input_files/loan_payment_apr.txt`
 - `lib/input_files/loan_payment_years.txt`
 - `lib/input_files/loan_payment_principal.txt`

and, based on what's in them, output something like

```
"APR: 5.0"
"Number of Years: 10"
"Principal: $50000.0"
"Monthly Payment: $530.33"
```

using the formula

![Payment formula](payment_formula.gif?raw=true "Payment formula")

Try modifying the copy in `loan_payment_principal.txt` and see if your program still produces the correct values.

### rails count_and_sort

In `count_and_sort.rake`, write some code such that the command

```
rails count_and_sort
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Count: 10"
"Sorted Numbers:"
[
    [0] 1.0,
    [1] 2.0,
    [2] 4.0,
    [3] 4.0,
    [4] 9.0,
    [5] 10.0,
    [6] 11.0,
    [7] 13.0,
    [8] 17.0,
    [9] 32.0
]
```

### rails minimum

In `minimum.rake`, write some code such that the command

```
rails minimum
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Minimum: 1.0"
```

### rails maximum

In `maximum.rake`, write some code such that the command

```
rails maximum
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Maximum: 32.0"
```

### rails range

In `range.rake`, write some code such that the command

```
rails range
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Range: 31.0"
```

### rails sum

In `sum.rake`, write some code such that the command

```
rails sum
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Sum: 103.0"
```

### rails mean

In `mean.rake`, write some code such that the command

```
rails mean
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Mean: 10.3"
```

### rails median

In `median.rake`, write some code such that the command

```
rails median
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Sorted Numbers:"
[
    [0] 1.0,
    [1] 2.0,
    [2] 4.0,
    [3] 4.0,
    [4] 9.0,
    [5] 10.0,
    [6] 11.0,
    [7] 13.0,
    [8] 17.0,
    [9] 32.0
]
"Median: 9.5"
```

### rails standard_deviation

In `standard_deviation.rake`, write some code such that the command

```
rails standard_deviation
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Your numbers:"
[
    [0] 13.0,
    [1] 32.0,
    [2] 1.0,
    [3] 4.0,
    [4] 11.0,
    [5] 17.0,
    [6] 9.0,
    [7] 10.0,
    [8] 2.0,
    [9] 4.0
]
"Standard Deviation: 8.718371407550839"
```

### rails mode

In `mode.rake`, write some code such that the command

```
rails mode
```

reads the contents of `lib/input_files/descriptive_statistics_numbers.txt` and, based on what's in it, output something like

```
"Sorted Numbers:"
[
    [0] 1.0,
    [1] 2.0,
    [2] 4.0,
    [3] 4.0,
    [4] 9.0,
    [5] 10.0,
    [6] 11.0,
    [7] 13.0,
    [8] 17.0,
    [9] 32.0
]
"Mode: 4.0"
```

### rails scrape_movies

In `scrape_movies.rake`, write some code such that the command

```
rails scrape_movies
```

should output the titles of the movies being released this week.
