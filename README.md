# SuccessiveMid

Group of related functions for generating random points, finding successive midpoints, and then drawing new lines between those midpoints and repeating. This process should converge to the centroid and many of the functions here graphically display this

- generareGaussians creates gaussian vector, used to generate random points for the functions that find successive midpoints

- produceMidpointMat creates a matrix that represents taking successive midpoints. Take successive midpoints by multiplying the generated matrix

- iterateMid graphically finds the successive midpoints of the inputs points, draws lines between the  points, finds the midpoints for those lines... and so on

- iterateMidNorm does the same thing as iterateMid except normalizes the vectors of x and y coordinates every iteration

- iterateMidRev does iterateMid in reverse

- iterateMidRand does the same thing as iterateMid but produces the random points itself instead of taking them in as arguments
