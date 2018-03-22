module Demo exposing (..)

type alias Track = {title: String, duration: Int}


shortestTrack: List Track -> Track
shortestTrack trackList =
     let sortedList = (List.sortBy .duration trackList)
     in
     case List.head sortedList of
          Just t -> t
          Nothing -> Track "" 0