using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConeIntersectionTest : MonoBehaviour {

    [SerializeField] Vector3 p0 = new Vector3(1f, 1f, 0f), p1 = new Vector3(-1f, 1f, 0f);
    [SerializeField] Vector3 origin, direction = Vector3.up;
    [SerializeField] float angle = 20f;

    bool intersected;

    private void Update()
    {
    }

    bool Intersects()
    {
        var ac = p0 - origin;
        var bc = p1 - origin;
        var dc = direction - origin;

        float angle0 = Vector3.Angle(dc.normalized, ac.normalized);
        float angle1 = Vector3.Angle(dc.normalized, bc.normalized);
        bool a0 = angle0 < angle;
        bool a1 = angle1 < angle;

        if(a0 || a1)
        {
            var l = dc.magnitude;
            return (ac.magnitude < l) || (bc.magnitude < l);
        }

        return false;
    }

    // http://lousodrome.net/blog/light/2017/01/03/intersection-of-a-ray-and-a-cone/
    bool IntersectsD(out Vector3 p)
    {
        var O = this.p0;
        var D = (this.p1 - this.p0).normalized;
        var C = origin;
        var V = (direction - C).normalized;

        var DV = Vector3.Dot(D, V);
        var cos = Mathf.Cos(Mathf.Deg2Rad * angle);
        var CO = (C - O).normalized;
        var COV = Vector3.Dot(CO, V);
        var DCO = Vector3.Dot(D, CO);
        var COCO = Vector3.Dot(CO, CO);

        var alpha = DV * DV - (cos * cos);
        var beta = 2f * ((DV * COV) - DCO * (cos * cos));
        var gamma = (COV * COV) - COCO * (cos * cos);
        var determinant = beta * beta - 4f * alpha * gamma;

        p = default(Vector3);

        if (determinant <= 0f) return false;

        if (determinant == 0f)
        {
            // var t = -beta / (2f * alpha);
            // p = O + D * t;
        }

        var l = (direction - origin).magnitude;
        var t1 = (-beta - Mathf.Sqrt(determinant)) / (2f * alpha);
        var t2 = (-beta + Mathf.Sqrt(determinant)) / (2f * alpha);

        var p0 = O + D * t1;
        var p1 = O + D * t2;

        if ((C - p0).magnitude < l) {
            p = p0;
            return true;
        } else if((C - p1).magnitude < l)
        {
            p = p1;
            return true;
        }

        return false;

        // return true;
        // return (C - p).magnitude < (d - c).magnitude;
    }

    private void OnDrawGizmos()
    {
        Gizmos.matrix = transform.localToWorldMatrix;

        Vector3 point;
        intersected = IntersectsD(out point);
        Gizmos.color = intersected ? Color.red : Color.white;
        Gizmos.DrawLine(p0, p1);

        if(intersected)
        {
            Gizmos.DrawSphere(point, 0.1f);
        }

        var tangent = (direction - origin).normalized;
        var tx = Mathf.Abs(tangent.x);
        var ty = Mathf.Abs(tangent.y);
        var tz = Mathf.Abs(tangent.z);

        var normal = new Vector3();
        var min = float.MaxValue;
        if (tx <= min)
        {
            min = tx;
            normal.Set(1, 0, 0);
        }
        if (ty <= min)
        {
            min = ty;
            normal.Set(0, 1, 0);
        }
        if (tz <= min)
        {
            normal.Set(0, 0, 1);
        }

        var vec = Vector3.Cross(tangent, normal).normalized;
        normal = Vector3.Cross(tangent, vec);
        var binormal = Vector3.Cross(tangent, normal);

        const float step = 1f;
        Gizmos.color = Color.green;
        var l = (direction - origin).magnitude;
        for (float r = -angle; r <= angle; r += step)
        {
            var q0 = Quaternion.AngleAxis(r, normal);
            for (float r2 = -angle; r2 <= angle; r2 += step)
            {
                var q1 = Quaternion.AngleAxis(r2, binormal);
                Gizmos.DrawLine(origin, origin + q0 * q1 * tangent * l);
            }
        }

    }

}
