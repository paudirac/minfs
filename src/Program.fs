// Learn more about F# at http://fsharp.org

open System

let read (prompt: string) () =
    Console.Write(prompt) |> ignore
    Console.ReadLine()

let eval s = s
let print (s: string) =
    Console.WriteLine(s) |> ignore

let rep = read "> " >> eval >> print

// (() -> ()) -> () -> ()
let rec loop fn () = fn () |> loop fn

[<EntryPoint>]
let main argv =
    printfn "Hello World from F#!"
    loop rep () |> ignore
    0
