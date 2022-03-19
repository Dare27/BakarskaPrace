﻿using System;
using System.Collections.Generic;
using System.Numerics;
using System.Windows;

namespace BakalarskaPrace
{
    internal class Geometry
    {
        //V případě této aplikace je nutné používat Mid-Point algoritmus, protože Bresenhaimův algoritmus nedosahuje při nízkých velikostech kruhu vzhledného výsledku
        public List<Point> DrawEllipse(Point startPos, Point endPos, bool fill, bool circle)
        {
            int x0 = (int)startPos.X;
            int y0 = (int)startPos.Y;
            int x1 = (int)endPos.X;
            int y1 = (int)endPos.Y;

            if (circle)
            {
                int xDistance = (int)Math.Abs(x0 - x1);
                int yDistance = (int)Math.Abs(y0 - y1);
                int dif = Math.Abs(yDistance - xDistance);

                //Delší stranu je nutné zkrátit o rozdíl, poté se dá použít stejná funkce pro kreslení obdélníků 
                if (xDistance < yDistance)
                {
                    if (y0 < y1)
                    {
                        y1 = y1 - dif;
                    }
                    else
                    {
                        //Prohození souřadnic a přičtení rozdílu velikosti stran
                        int tempY = y1;
                        y1 = y0;
                        y0 = tempY + dif;
                    }
                }
                else
                {
                    if (x0 < x1)
                    {
                        x1 = x1 - dif;
                    }
                    else
                    {
                        //Prohození souřadnic a přičtení rozdílu velikosti stran
                        int tempX = x1;
                        x1 = x0;
                        x0 = tempX + dif;
                    }
                }
            }

            double centerX = (x0 + x1) / 2;
            double centerY = (y0 + y1) / 2;
            double radX = centerX - Math.Min(x0, x1);
            double radY = centerY - Math.Min(y0, y1);
            double radX2 = radX * radX;
            double radY2 = radY * radY;
            double twoRadX2 = 2 * radX2;
            double twoRadY2 = 2 * radY2;
            double p;
            double x = 0;
            double y = radY;
            double px = 0;
            double py = twoRadX2 * y;
            List<Point> points = new List<Point>();

            //Vykreslení počátečního bodu do každého kvadrantu
            points.AddRange(QuadrantPlotter((int)centerX, (int)centerY, (int)x, (int)y, fill));

            //Počáteční rozhodovací parametr regionu 1
            p = (int)Math.Round(radY2 - (radX2 * radY) + (0.25 * radX2));

            //Vykreslení 1. regionu 
            while (px < py)
            {
                x++;
                px += twoRadY2;
                //Kontrola a aktualizace hodnoty rozhodovacího parametru na základě algoritmu
                if (p < 0)
                {
                    p += radY2 + px;
                }
                else
                {
                    y--;
                    py -= twoRadX2;
                    p += radY2 + px - py;
                }
                points.AddRange(QuadrantPlotter((int)centerX, (int)centerY, (int)x, (int)y, fill));
            }

            //Počáteční rozhodovací parametr regionu 
            p = (int)Math.Round(radY2 * (x + 0.5) * (x + 0.5) + radX2 * (y - 1) * (y - 1) - radX2 * radY2);

            //Vykreslení 2. regionu 
            while (y > 0)
            {
                y--;
                py -= twoRadX2;
                //Kontrola a aktualizace hodnoty rozhodovacího parametru na základě algoritmu
                if (p > 0)
                {
                    p += radX2 - py;
                }
                else
                {
                    x++;
                    px += twoRadX2;
                    p += radX2 - py + px;
                }
                points.AddRange(QuadrantPlotter((int)centerX, (int)centerY, (int)x, (int)y, fill));
            }
            return points;
        }

        //Vykreslit symetrické body ve všech kvadrantech pomocí souřadnic
        public List<Point> QuadrantPlotter(int centerX, int centerY, int x, int y, bool fill)
        {
            List<Point> points = new List<Point>(); ;
            if (fill)
            {
                points.AddRange(DrawLine(centerX - x, centerY + y, centerX + x, centerY + y));
                points.AddRange(DrawLine(centerX - x, centerY - y, centerX + x, centerY - y));
            }
            else
            {
                points.Add(new Point(centerX + x, centerY + y));
                points.Add(new Point(centerX - x, centerY + y));
                points.Add(new Point(centerX + x, centerY - y));
                points.Add(new Point(centerX - x, centerY - y));
            }
            return points;
        }

        public List<Point> DrawRectangle(Point startPos, Point endPos, bool square, bool fill)
        {
            List<Point> points = new List<Point>();
            int x0 = (int)startPos.X;
            int y0 = (int)startPos.Y;
            int x1 = (int)endPos.X;
            int y1 = (int)endPos.Y;

            if (square) 
            {
                int xDistance = (int)Math.Abs(x0 - x1);
                int yDistance = (int)Math.Abs(y0 - y1);
                int dif = Math.Abs(yDistance - xDistance);             

                //Delší stranu je nutné zkrátit o rozdíl, poté se dá použít stejná funkce pro kreslení obdélníků 
                if (xDistance < yDistance)
                {
                    if (y0 < y1)
                    {
                        y1 = y1 - dif;
                    }
                    else
                    {
                        //Prohození souřadnic a přičtení rozdílu velikosti stran
                        int y = y1;
                        y1 = y0;
                        y0 = y + dif;
                    }
                }
                else
                {
                    if (x0 < x1)
                    {
                        x1 = x1 - dif;
                    }
                    else
                    {
                        //Prohození souřadnic a přičtení rozdílu velikosti stran
                        int x = x1;
                        x1 = x0;
                        x0 = x + dif;
                    }
                }
            }

            if (y0 < y1)
            {
                for (int y = y0; y < y1; y++)
                {
                    if (fill)
                    {
                        List<Point> fillPoints = DrawLine(x0, y, x1, y);
                        points.AddRange(fillPoints);
                    }
                    else
                    {
                        points.Add(new Point(x0, y));
                        points.Add(new Point(x1, y));
                    }
                }
            }
            else
            {
                for (int y = y0; y > y1; y--)
                {
                    if (fill)
                    {
                        List<Point> fillPoints = DrawLine(x0, y, x1, y);
                        points.AddRange(fillPoints);
                    }
                    else
                    {
                        points.Add(new Point(x0, y));
                        points.Add(new Point(x1, y));
                    }
                }
            }

            if (x0 < x1)
            {
                for (int x = x0; x < x1; x++)
                {
                    if (fill)
                    {
                        List<Point> fillPoints = DrawLine(x, y0, x, y1);
                        points.AddRange(fillPoints);
                    }
                    else
                    {
                        points.Add(new Point(x, y0));
                        points.Add(new Point(x, y1));
                    }
                }
            }
            else
            {
                for (int x = x0; x > x1; x--)
                {
                    if (fill)
                    {
                        List<Point> fillPoints = DrawLine(x, y0, x, y1);
                        points.AddRange(fillPoints);
                    }
                    else
                    {
                        points.Add(new Point(x, y0));
                        points.Add(new Point(x, y1));

                    }
                }
            }
            points.Add(new Point(x1, y1));
            return points;
        }

        //Bresenhaimův algoritmus pro kreslení přímek
        public List<Point> DrawLine(int x, int y, int x2, int y2)
        {
            List<Point> points = new List<Point>();
            int w = x2 - x;
            int h = y2 - y;
            int dx1 = 0, dy1 = 0, dx2 = 0, dy2 = 0;

            //Nalezení kvadrantu
            if (w < 0) dx1 = -1; else if (w > 0) dx1 = 1;
            if (h < 0) dy1 = -1; else if (h > 0) dy1 = 1;
            if (w < 0) dx2 = -1; else if (w > 0) dx2 = 1;
            int longest = Math.Abs(w);
            int shortest = Math.Abs(h);

            if (!(longest > shortest))
            {
                longest = Math.Abs(h);
                shortest = Math.Abs(w);
                if (h < 0) dy2 = -1; else if (h > 0) dy2 = 1;
                dx2 = 0;
            }

            int numerator = longest >> 1;
            for (int i = 0; i <= longest; i++)
            {
                points.Add(new Point(x, y));
                numerator += shortest;
                if (!(numerator < longest))
                {
                    numerator -= longest;
                    x += dx1;
                    y += dy1;
                }
                else
                {
                    x += dx2;
                    y += dy2;
                }
            }
            return points;
        }

        public List<Point> DrawStraightLine(int x0, int y0, int x1, int y1, int imageWidth, int imageHeight)
        {
            int dx = Math.Abs(x1 - x0) + 1;
            int dy = Math.Abs(y1 - y0) + 1;

            //Kroky musí mít rovnoměrné rozdělení
            double ratio = Math.Max(dx, dy) / Math.Min(dx, dy);
            double pixelStep = Math.Round(ratio);

            if (pixelStep > Math.Min(dx, dy))
            {
                pixelStep = Math.Max(imageWidth, imageHeight);
            }

            int maxDistance = (int)Math.Sqrt((Math.Pow(x0 - x1, 2) + Math.Pow(y0 - y1, 2)));
            int x = x0;
            int y = y0;

            List<Point> points = new List<Point>();

            for (int i = 1; i <= maxDistance + 1; i++)
            {
                if (!points.Contains(new Point(x, y)))
                {
                    points.Add(new Point(x, y));
                }

                if (Math.Sqrt((Math.Pow(x0 - x, 2) + Math.Pow(y0 - y, 2))) >= maxDistance)
                {
                    break;
                }

                bool isAtStep;

                if (i % pixelStep == 0)
                {
                    isAtStep = true;
                }
                else
                {
                    isAtStep = false;
                }

                if (dx >= dy || isAtStep)
                {
                    if (x0 < x1)
                    {
                        x += 1;
                    }
                    else
                    {
                        x -= 1;
                    }
                }

                if (dy >= dx || isAtStep)
                {
                    if (y0 < y1)
                    {
                        y += 1;
                    }
                    else
                    {
                        y -= 1;
                    }
                }
            }
            return points;
        }
    }
}
