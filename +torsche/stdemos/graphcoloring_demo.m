% GRAPHCOLORING_DEMO Demo application of the graph coloring
%
%    See also GRAPHCOLORING


% Author: Premysl Sucha <suchap@fel.cvut.cz>
% Author: Vojtech Navratil <navrav1@fel.cvut.cz>
% Originator: Michal Kutil <kutilm@fel.cvut.cz>
% Originator: Premysl Sucha <suchap@fel.cvut.cz>
% Project Responsible: Zdenek Hanzalek
% Department of Control Engineering
% FEE CTU in Prague, Czech Republic
% Copyright (c) 2004 - 2009 
% $Revision: 2897 $  $Date:: 2009-03-18 15:17:31 +0100 #$


% This file is part of TORSCHE Scheduling Toolbox for Matlab.
% TORSCHE Scheduling Toolbox for Matlab can be used, copied 
% and modified under the next licenses
%
% - GPL - GNU General Public License
%
% - and other licenses added by project originators or responsible
%
% Code can be modified and re-distributed under any combination
% of the above listed licenses. If a contributor does not agree
% with some of the licenses, he/she can delete appropriate line.
% If you delete all lines, you are not allowed to distribute 
% source code and/or binaries utilizing code.
%
% --------------------------------------------------------------
%                  GNU General Public License  
%
% TORSCHE Scheduling Toolbox for Matlab is free software;
% you can redistribute it and/or modify it under the terms of the
% GNU General Public License as published by the Free Software
% Foundation; either version 2 of the License, or (at your option)
% any later version.
% 
% TORSCHE Scheduling Toolbox for Matlab is distributed in the hope
% that it will be useful, but WITHOUT ANY WARRANTY;
% without even the implied warranty of MERCHANTABILITY or 
% FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with TORSCHE Scheduling Toolbox for Matlab; if not, write
% to the Free Software Foundation, Inc., 59 Temple Place,
% Suite 330, Boston, MA 02111-1307 USA


clc;
disp('Demo of graph coloring algorithm.');
disp('-------------------------------------------');


A = [0 1 1 0 0 0 0;
    0 0 0 1 1 0 0;
    0 0 0 0 0 1 1;
    0 0 0 0 0 0 0;
    1 0 0 1 0 0 0;
    1 0 0 0 1 0 1;
    0 0 0 0 1 0 0];
g3 = torsche.graph('adj',A);
g3.Name = 'G_{2}';
g4 = graphcoloring(g3);
g4.Name = 'G_{2} - Colored';

torsche.graphedit(g3,g4);

%end of file

