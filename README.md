
# Rationale

 The current sequence editor works well, but is starting to show scalability issues for things like asyncronous actions, syntax validation. testability and analysis.

# Worth Investigating

 * [Lua](https://github.com/jmettraux/rufus-lua)
   * Advantage: Simple
   * Advantage: Well known for plugin systems.
   * Problem: Harder to parse for corectness on frontend.
 * [MRuby Sandbox](https://github.com/christopheraue/ruby-mruby_sandbox)
   * Advantage: Isomorphic code with existing Ruby codebases.
   * Problem: Harder to parse for corectness on frontend.
 * [JSONScript](http://www.jsonscript.org/)
   * Advantage: Can be sent using JSON RPC.
   * Advantage: Can be parsed anywhere, even the frontend.
 * [Blockly](https://developers.google.com/blockly/guides/get-started/web)
   * Problem: Clashes with existing UI.
   * Advantage: Dead simple for users.
   * Advantage: Has code generator support built in.

# Use Cases

 * Pause / sleep the "thread" and resume it later.
   * Wait for movement to finish before resuming execution thread.
   * A "WAIT" command that doesn't block the parent process.
 * Dependency management
   * Some code will rely on other code.
   * Ideally, we can't delete a it if its in use.
     * A `require` keyword?
     * Late binding? Late binding means no static analysis.
   * Probably needs to be polymorphic- require `tool`, `plant`, `sequence`, etc...
 * Dynamic method calls / if statements.
 * Stop invalid code from getting saved.


# Requirements

    ## if_statement

    Parameters:

    ## wait

    Parameters:

    ## emergency_stop

    Parameters:

    ## home_all

    Parameters:

    ## home_x

    Parameters:

    ## home_y

    Parameters:

    ## home_z

    Parameters:

    ## move_absolute

    Parameters:

    ## move_relative

    Parameters:

    ## pin_write

    Parameters:

    ## read_parameter

    Parameters:

    ## read_status

    Parameters:

    ## write_parameter

    Parameters:

    ## send_message

    Parameters:

    ## read_pin

    Parameters:
